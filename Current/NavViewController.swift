//
//  NavViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 11/3/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase

class NavViewController: UINavigationController {

    override func viewDidAppear(_ animated: Bool) {
      //  checkIfUserIsLoggedIn()
        print("hiiiiiiiijijijijijijijijijijijijijijij")
    
        Auth.auth().addStateDidChangeListener { auth, user in
            if let user = user {
                print("You are logged in")
            } else {
                print("Please log in")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func checkIfUserIsLoggedIn(){
        if Firebase.Auth.auth().currentUser?.uid == nil {
            handleLogOut()
        }
    }
    
    func handleLogOut(){
        
        do {
            try Firebase.Auth.auth().signOut()
            
        } catch let logout{
            print(logout)
        }
        
        print("You got this far")
        performSegue(withIdentifier: "b", sender: self)
        //prepare(for: b, sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "b"{
            print("hereeererererererererere")
            let barViewControllers = segue.destination as! LogInViewController
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
