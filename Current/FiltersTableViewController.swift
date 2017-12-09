//
//  FiltersTableViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 12/9/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit


class FiltersTableViewController: UITableViewController {

    enum filters : String {
       case Sports, Games, Movies, Workout, Party, Purchase, Sell, Labor, LostAndFound, Food, Dating, Studying, Music, Writing, Reading, Technology, Art, Vehicle, Clubs, Apparel, Alcohol, Sleeping, Film, Science, Weather, Roads, Advertisement, Volunteer, politics, Health, Emotional, ThinkTank, Animals, Hangout, Housing, Cleaning
 
        static var count: Int { return filters.Cleaning.hashValue + 1}
        
         static let allValues = [Sports, Games, Movies, Workout, Party, Purchase, Sell, Labor, LostAndFound, Food, Dating, Studying, Music, Writing, Reading, Technology, Art, Vehicle, Clubs, Apparel, Alcohol, Sleeping, Film, Science, Weather, Roads, Advertisement, Volunteer, politics, Health, Emotional, ThinkTank, Animals, Hangout, Housing, Cleaning]
    }

    let userFilters = ["Interests, Popularity, Alphabetical"]
    var hookFilters : [filters] = []
    var i = 0



@IBAction func submitFilters(_ sender: Any) {
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        let rightButtonItem = UIBarButtonItem.init(
            title: "Submit",
            style: .done,
            target: self,
            action: #selector(rightButtonAction)
        )

        let leftButtonItem = UIBarButtonItem.init(
            title: "Cancel",
            style: .done,
            target: self,
            action: #selector(leftButtonAction)
        )
        self.navigationItem.leftBarButtonItem = leftButtonItem
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
        self.tableView.allowsMultipleSelection =  true
    }

    func rightButtonAction(){
        
    }
    
    func leftButtonAction(){
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return filters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        
        let value = indexPath.row
        let sampleString = filters.allValues[value].rawValue
        cell.textLabel?.text = sampleString
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
