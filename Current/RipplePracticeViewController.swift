//
//  RIpplePracticeViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 10/20/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase
import GeoFire

class RipplePracticeViewController: UIViewController {
    @IBOutlet weak var rangeLabel: UILabel!
    
    @IBOutlet weak var circleImageView: UIImageView!
    var lastSize = 250.0
    var yardStrata = 100
    var strings = [String]()
    @IBOutlet weak var segment: UISegmentedControl!
    //var users = [CurrentUser]()
    
    var users: [CurrentUser] = []
    // var hooks : [hook]()
    //var usersAndHooks : [user,hook]()
    
    

    @IBAction func changeRange(_ gestureRecognizer : UIPinchGestureRecognizer) {
      var range = gestureRecognizer.scale
        
        if(range > 2.18){
         range = 2.18
        }
        
        
        if(range < 0.422){
            range = 0.422
        }
       
        
        circleImageView.transform = CGAffineTransform(scaleX: range, y: range)
        
        if(range >= 0.422 && range <= 0.7736)
        {
            yardStrata = 100
        }
        
        if(range >= 0.7737 && range <= 1.1253)
        {
            yardStrata = 200
        }
        
        if(range >= 1.1254 && range <= 1.4768)
        {
            yardStrata = 300
        }
        
        if(range >= 1.4769 && range <= 1.8285)
        {
            yardStrata = 400
        }
        
        if(range >= 1.8286 && range <= 2.18)
        {
            yardStrata = 500
        }
          rangeLabel.text = String(describing: yardStrata)
        
        
        
   
    }
    
    
    @IBAction func ripple(_ sender: Any) {
        rangeLabel.text = "You done rippled"
      //  show ripple effect
        //send yardStrata fetchUsersAndHooks
        switch segment.selectedSegmentIndex {
        case 0:
          
            //let user1 =  CurrentUser(email: "email", firstName: "firstname", lastName: "lastname", password: "passwro", userName: "username")
           /* users = fetchUsers(range: yardStrata)*/
            fetchUsers(range: yardStrata)
            //print(users[0].email)
            rangeLabel.text = "There are " + String(users.count) + " users nearby"
            rangeLabel.font = UIFont(name: "Roboto", size: 17)
            break
        case 1:
            /*var hooks = */fetchHooks(range: yardStrata)
            break
        case 2:
            /*var usersAndHooks =*/ fetchUsersAndHooks(range: yardStrata)
            break
            
        default:
            
            break
        }
      /*  fetchUsersAndHooks(yardStrata)*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchUsers(range: yardStrata)
        //logOut()
        //print("ajksjdflkajsdklfjalksdjfalksdjflkajsdklfjasdlkfjlaksdjfklasjdklfjsdklfjaklsdjf")
       
        //If we don't have a logged in user then back out
//        if Firebase.Auth.auth().currentUser?.uid == nil{
//            //
//            // perform(#selector(logOut), with: nil, afterDelay: 0)
//            // logOut()
//            logOut()
//            print("You got this far")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetchUsersAndHooks(range : Int){

        var numberOfUsers = 20
        let numberOfHooks = 12
        rangeLabel.text = "There are " + String(numberOfUsers) + " Users and " + String(numberOfHooks) + " Hooks around you."
    }
    
    func fetchUsers(range : Int) /*-> [CurrentUser]*/{
        
   
            let reference = Firebase.Database.database().reference(fromURL: "https://current-79dd0.firebaseio.com/")
              var foundUsers: [CurrentUser] = []
                var index = 0
                reference.child("users").observeSingleEvent(of: .value, with: { (snapshot) in
            
                if let snapshots = snapshot.children.allObjects as? [DataSnapshot] {
                
                for snap in snapshots
                {
                     let username = snap.childSnapshot(forPath: "userName").value! as! String
                     let firstname = snap.childSnapshot(forPath: "firstName").value! as! String
                     let lastname = snap.childSnapshot(forPath: "lastName").value! as! String
                     let email = snap.childSnapshot(forPath: "email").value! as! String
                     let password = snap.childSnapshot(forPath: "password").value! as! String

                    let user = CurrentUser(email: email, firstName: firstname, lastName: lastname, password: password, userName: username)
                    foundUsers.append(user)
                    
                    index += 1
                    }
                    
                    
                    self.users = foundUsers
                           // return foundUsers
            }
        })
        

 //return foundUsers
    }
    
    func fetchHooks(range : Int){
        //hooks.count
        let numberOfHooks = 12
        rangeLabel.text = "There are " + String(numberOfHooks) + " Hooks around you."
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 
}
