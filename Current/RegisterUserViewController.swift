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
        NotificationCenter.default.addObserver(self, selector: #selector(RegisterUserViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(RegisterUserViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
    
        guard let email = emailTextField.text, let password = passwordTextField.text else{
            print("Invalid Format")
            return
        }
        
        if let firstName = firstNameTextField.text, let lastname = lastNameTextField.text, let userName = userNameTextField.text {
            if password == confirmPasswordTextField.text {
                
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
                        if err != nil {
                            print(err!)
                            return
                        }
                        
                        //  Firebase.Auth.auth().currentUser =
                        print("Saved User successfully")
                        self.performSegue(withIdentifier: "logInCreate", sender: self)
                        
                    })
                })
            }
        }
        else{
            print("PLEASE INSERT DATA")
        }
        
    }
    func login() {
        
    }
}
