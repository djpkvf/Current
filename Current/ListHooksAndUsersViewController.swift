//
//  ListHooksAndUsersViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 12/9/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class ListHooksAndUsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    enum filters : String {
//        case Sports, Games, Movies, Workout, Party, Purchase, Sell, Labor, LostAndFound, Food, Dating, Studying, Music, Writing, Reading, Technology, Art, Vehicle, Clubs, Apparel, Alcohol, Sleeping, Film, Science, Weather, Roads, Advertisement, Volunteer, politics, Health, Emotional, ThinkTank, Animals, Hangout, Housing, Cleaning
//
//        static var count: Int { return filters.Cleaning.hashValue + 1}
//
//        static let allValues = [Sports, Games, Movies, Workout, Party, Purchase, Sell, Labor, LostAndFound, Food, Dating, Studying, Music, Writing, Reading, Technology, Art, Vehicle, Clubs, Apparel, Alcohol, Sleeping, Film, Science, Weather, Roads, Advertisement, Volunteer, politics, Health, Emotional, ThinkTank, Animals, Hangout, Housing, Cleaning]
//    }
    @IBOutlet var tableView : UITableView!
    var myHooks = [Hook]()
    var myUsers = [CurrentUser]()
    var myFilters = [FiltersTableViewController.filters]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
        for users in myUsers{
            print(users.userName)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if myHooks.count > 0 && myUsers.count > 0
        {
            return 2
        }
        else{
           return 1
        }
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       //User logic
        if(myUsers.count > 0)
        {
            return myUsers.count
        }
        else{
        return 1
        }
        
        /*  //Hooks logic
         if(myHooks.count > 0)
         {
         return myHooks.count
         }
         else{
         return 1
         }
         }
         
         //Users and Hooks logic
         if(myUsers.count > 0 && myHooks.count> 0)
         {
         return myUsers.count
         }
         else{
         //put remaining logic here
         }
         }
         */
        }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = myUsers[indexPath.row].userName//myHooks[indexPath.row].name
        
        return cell
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "filters" {
            let secondController = segue.destination as! FiltersTableViewController
        //    print("Users segued to the navigation controller")
            secondController.parentVC = self
        }
    }
    

    @IBAction func cancelFilters(_ sender: Any) {
   if myFilters.count != 0
   {

    for filter in myFilters
    {
    let text = filter.rawValue
        
           print(text) //works
        
     
    }
        }

      //  print("Hi")
    }
    @IBOutlet weak var alphabetize: UIButton!


    @IBAction func alphabetizeResults(_ sender: Any) {
    }
    
    @IBAction func connectionOrganize(_ sender: Any) {
    }
    
    @IBAction func popularityOrganize(_ sender: Any) {
    }
    
}
