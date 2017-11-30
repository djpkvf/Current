//
//  ProfileViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 11/3/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase


class ProfileViewController: UIViewController {
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
  var thisUser = Firebase.Auth.auth().currentUser

        
        if(thisUser != nil)
        {
          //  self.title = thisUser?.email
            
        }
//        var snap : DataSnapshot
//
//        let email = Firebase.Auth.auth().currentUser?.email
//
//        title = email
//
//
//        Firebase.Database.database().reference().child("users/BlackZach").observeSingleEvent(of: .value, with: {(snap) in
//
//        print(snap)
//
//
//        }, withCancel: nil)
////            if let dictionary =  as [String : AnyObject]{
//                title = dictionary["name"] as String
//            }, withCancel: nil)
//
//            observeSingleEvent(of: .value, with: {(snapeshot) in
//                i
//
//
//            })
//        }
//        // Do any additional setup after loading the view.
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

}
