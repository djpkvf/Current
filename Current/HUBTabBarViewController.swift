//
//  HUBTabBarViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 11/2/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase

class HUBTabBarViewController: UITabBarController {

    override func viewDidAppear(_ animated: Bool) {
        checkIfUserIsLoggedIn()
       
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
        
        
        print(Auth.auth().currentUser?.email)
    }
    
    func handleLogOut(){
        
        do {
            try Firebase.Auth.auth().signOut()
            
        } catch let logout{
            print(logout)
        }
        
        
        self.performSegue(withIdentifier: "b", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // if segue.identifier == "b"{
      // print("hereeererererererererere")
         //   let barViewControllers = segue.destination as! LogInViewController
           }
        
    }
