//
//  LoginViewController.swift
//  Current
//
//  Created by Dominic Pilla on 12/10/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        if usernameTextField.text == "" || passwordTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        } else {
            Firebase.Auth.auth().signIn(withEmail: self.usernameTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                if error == nil {
                    let hubTabBarViewController = self.storyboard?.instantiateViewController(withIdentifier: "HUB")
                    self.present(hubTabBarViewController!, animated: true, completion: nil)
                } else {
                    let alertController = UIAlertController(title: "Error", message: "Incorrect Email or Password.", preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}
