//
//  InspectUserViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 12/10/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class InspectUserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet var tableView : UITableView!
    
    var thisUser = CurrentUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var dummyInterests = [Interests]()
        dummyInterests.append(Interests.Gaming)
        dummyInterests.append(Interests.Writing)
        thisUser.setInterests(interests: dummyInterests)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
     return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return (thisUser.interests?.count)!
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
     //   cell.textLabel?.text = myUsers[indexPath.row].userName//myHooks[indexPath.row].name
        
        return cell
        
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
