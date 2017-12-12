//
//  HooksViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 12/11/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class HooksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    var myHooks = [Hook]()
    var bittenHooks = [Hook]()
    @IBOutlet var tableView : UITableView!
    @IBOutlet weak var hookSegmentControl: UISegmentedControl?
    var selectedHook : Hook?
    var index : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*func */
        /*func CurrentUser.loadMyHooks*/
        var hook = Hook(name: "finishTheFinal", ownerUserID: "smurphDogg")
        myHooks.append(hook)
        hook = Hook(name: "Rec Basketball", ownerUserID: "smurphDogg")
        myHooks.append(hook)
        
      //  RipplePracticeViewController.fetchHooks(<#T##RipplePracticeViewController#>)
    
        hook = Hook(name: "Party at 1111", ownerUserID: "HanSong")
        bittenHooks.append(hook)
        hook = Hook(name: "Paragon", ownerUserID: "twerkin4trayvon")
        bittenHooks.append(hook)
        // Do any additional setup after loading the view.
    
        index = hookSegmentControl?.selectedSegmentIndex
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      
            switch index{
            case 0?:
                return myHooks.count + 1
              
            case 1?:
                return bittenHooks.count
           
            default:
                
                break
            }
        
return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            // Configure the cell...
        
        switch index {
       //All of the hooks that you've made and how to make more
        case 0?:
            if(indexPath.row == 0)
            {
                cell.textLabel?.text = "Add Hook"
                // cell.textLabel?.text = myHooks[indexPath.row].name//myHooks[indexPath.row].name
            }
            else
            {
                cell.textLabel?.text = myHooks[indexPath.row - 1].name
            }
            break
            
        case 1?:
              cell.textLabel?.text = bittenHooks[indexPath.row].name
            break
        default:
            
            break
        }
       
        
            return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch index{
        //All of the hooks that you've made and how to make more
        case 0?:
            if(indexPath.row == 0)
            {
                performSegue(withIdentifier: "createHook", sender: self)
                // cell.textLabel?.text = myHooks[indexPath.row].name//myHooks[indexPath.row].name
            }
            else
            {
                selectedHook = myHooks[indexPath.row - 1]
                performSegue(withIdentifier: "detailsOfHook", sender: self)
            }
            break
            
        case 1?:
            selectedHook = myHooks[indexPath.row]
            performSegue(withIdentifier: "detailsOfHook", sender: self)
            //cell.textLabel?.text = bittenHooks[indexPath.row].name
            break
        default:
            
            break
        }
        
    }
    
    @IBAction func changedIndex(_ sender: Any) {
        index = hookSegmentControl?.selectedSegmentIndex
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createHooks" {
            let secondController = segue.destination as! CreateHookViewController
            //    print("Users segued to the navigation controller")
            secondController.parentVC = self
            secondController.myHook = selectedHook
        }
        if segue.identifier == "detailsOfHook" {
            let secondController = segue.destination as! HookDetailsViewController
            //    print("Users segued to the navigation controller")
            secondController.parentVC = self
            secondController.myHook = selectedHook
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
