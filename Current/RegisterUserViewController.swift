//
//  RegisterUserViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 10/29/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase
import GeoFire

class RegisterUserViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func nextButton(_ sender: Any) {
    
        guard let email = emailTextField.text, let password = passwordTextField.text else{
            print("Invalid Format")
            return
        }
        
        if let firstName = firstNameTextField.text, let lastname = lastNameTextField.text, let userName = userNameTextField.text
      {
            if password == confirmPasswordTextField.text             {
                
                
                Firebase.Auth.auth().createUser(withEmail: email, password: password, completion:{ (user, err) in
                    if let error = err {
                        print(error.localizedDescription)
                        return
                    }
             
                    let reference = Firebase.Database.database().reference(fromURL: "https://current-79dd0.firebaseio.com/")
                   let usersReference = reference.child("users").child(userName)
                  //  usersReference.updateChildValues(["someValue" : 123123])
                    
                
                    let values = ["firstName" : firstName, "lastName" : lastname, "userName" : userName, "email" : email, "password" : password]
                    
                    usersReference.updateChildValues(values, withCompletionBlock: {(err,reference) in
                        if err != nil{
                            print(err)
                            return
                        }
                        
                      //  Firebase.Auth.auth().currentUser =
                        print("Saved User successfully")
                        self.performSegue(withIdentifier: "logInCreate", sender: self)
                    })                    //do suff
                        })
                

           
        }
}
        else{
            print("PLEASE INSERT DATA")
        }
        
    }
        
        func login()
        {
            
        }
        
    }

