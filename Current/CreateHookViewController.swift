//
//  CreateHookViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 12/11/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import GeoFire
import Firebase

class CreateHookViewController: UIViewController {

    var myHook : Hook?
    var parentVC : HooksViewController?
    
    @IBOutlet weak var hookNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       // navigationController?.title = "New Hook"
        navigationController?.editButtonItem.title = "Submit"
        // Do any additional setup after loading the view.
        myHook = Hook(name: "Cottages Event", ownerUserID: "Strub")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createHook(_ sender: Any) {
        if let newHook = myHook{
           // self.parentVC?.myHooks.append(newHook)
            pushHookToFirebase(hook: newHook)
            print("We in the cut")
            //post to firebase of simply append to firebase and then pull from firebase as first method
            
            
          navigationController?.popViewController(animated: true)
        }
      
    }
    
    func pushHookToFirebase(hook : Hook)
    {
        let reference = Firebase.Database.database().reference(fromURL: "https://current-79dd0.firebaseio.com/")
       // let usersReference = reference.child("hooks").child(hookNameTextField.text!)
       let hookReference = reference.child("hooks").childByAutoId()
        
        /*let values = ["firstName" : firstName, "lastName" : lastname, "userName" : userName, "email" : email, "password" : password]
        */
        
        let values = ["hookName" : hookNameTextField.text, "ownerUserId" : Auth.auth().currentUser?.email] //Auth.auth().currentUser?.value(forKey: "userName") ]
        hookReference.updateChildValues(values, withCompletionBlock: {(err,reference) in
            if err != nil{
                print(err)
                return
            }
            
            //  Firebase.Auth.auth().currentUser =
            print("Saved Hook successfully")

        })                    //do suff
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


