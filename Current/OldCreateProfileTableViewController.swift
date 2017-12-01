//
//  TableViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 6/29/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit


struct cellData{
    let cellType : Int! //1= Label 2=TextField
    let text : String!
    //let image : UIImage?
}


class OldCreateProfileTableViewController: UITableViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

  
    var tableCellDataArray = [cellData]()
   // var cellArray = [UITableViewCell]()
   // var cellIndex = 0
    
    //https://makeapppie.com/2016/06/28/how-to-use-uiimagepickercontroller-for-a-camera-and-photo-library-in-swift-3-0/ use this tutorial to include photopicker
    let myImagePicker = UIImagePickerController()
    let myImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(TextFieldTableViewCell  .self, forCellReuseIdentifier: "Cell")
        tableCellDataArray = [cellData(cellType : 1, text : "Name"),
                        cellData(cellType : 2, text : "First Name"),
                        cellData(cellType : 2, text : "Middle Name"),
                        cellData(cellType : 2, text : "Last Name"),
                        cellData(cellType : 2, text : "NickName"),
                        cellData(cellType : 1, text : "Pictures"),
                        cellData(cellType : 3, text : "Profile Pic"),
                        cellData(cellType : 3, text : "Anonymous Pic")]
        
        
        
        self.tableView.separatorStyle = .none
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return tableCellDataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        

        //Headers of labels
        if tableCellDataArray[indexPath.row].cellType == 1{
            let label = UILabel(frame : CGRect(x: 150.0, y: 14.0, width: 150.0, height: 30.0))
            label.font = UIFont (name: "Futura-Medium", size: 30)
            label.text = tableCellDataArray[indexPath.row].text
            label.tag = indexPath.row
            cell.contentView.addSubview(label)
            return cell
        }
        
        //Text Fields
        if tableCellDataArray[indexPath.row].cellType == 2{
            
            //Create Text Field
            let textField = UITextField(frame : CGRect(x: 10.0, y: 14.0, width: 200.0, height: 30.0))
            textField.font = UIFont (name: "Futura-Medium", size: 15)
            textField.placeholder = tableCellDataArray[indexPath.row].text
            
            //Tag determines the way to reference cells to pull out data to make a user
            textField.tag = indexPath.row
            //add cells
            cell.contentView.addSubview(textField)
            
            return cell
        }
      
        //Label and Button
        if tableCellDataArray[indexPath.row].cellType == 3{
            //label describing button functionality
            
            /*If the button should have a label, include this
            let label = UILabel(frame : CGRect(x: 10.0, y: 14.0, width: 100.0, height: 30.0))
            label.font = UIFont (name: "Futura-Medium", size: 15)
            label.text = arrayOfCells[indexPath.row].text + ": "
            label.tag = indexPath.row
            cell.contentView.addSubview(label)*/
            
            //button for importing images
            let button = UIButton()
            button.frame = CGRect(x: 10, y: 0, width: 100, height: 25)
            button.backgroundColor = UIColor.lightGray
            
            //add rounded buttons
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 5
            button.titleLabel?.font = UIFont (name: "Futura-Medium", size: 12)
            button.setTitle(tableCellDataArray[indexPath.row].text, for: .normal)
            button.addTarget(self, action: #selector(importImageButton(_:)), for: .touchUpInside)
            
            //Tag helps reference location of cell
            button.tag = indexPath.row
            //Add button to cell
            self.view.addSubview(button)
            //Add cell to tableView
            cell.contentView.addSubview(button)
            
            return cell
        }

        //So that we at least don't crash
        print("You don't have a special cell")
        return cell
       
    }
    

    @IBAction func createCurrentUser(_ sender: Any) {
        
        //If every necessary field is filled out, create the user
     //   let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
      //  let user = User(context: context) // Link Task & Context
        print("1")
        //As many sections-- Thiis line might be redundant since I only plan on doing one section
        for section in 0..<tableView.numberOfSections {
            //As many rows
            for row in 0..<tableView.numberOfRows(inSection: section) {
                let indexPath = NSIndexPath(row: row, section: section)
                print(indexPath.row)
                //let cell = tableView.cellForRow(at: indexPath as IndexPath)
                
                    switch(indexPath.row){
                        
                    case 1:
                       let selectedCell = tableView!.cellForRow(at: indexPath as IndexPath) as! TextFieldTableViewCell//your custom cell class.
       //                 let firstName = selectedCell.myTextField.text //textFied is your textfield name.
                       // print(firstName ?? "loser")
                        /*
                        print("3 ")
                            
                       if let textFieldCell = cell as? TextFieldTableViewCell{
                        var firstName = "default"
                         firstName = textFieldCell.myTextField.text!
                        //print(firstName)
                          //print(firstName ?? firstName)
                                print(firstName)
                        */
                        

                        break;
                        
                    case 2:
                        
                        break;
                        
                    case 3:
                        
                        
                        break;
                        
                    case 4:
                        
                        break;
                        
                        
                        
                    case 6:
                        
                        break;
                        
                    case 7:
                        
                        
                        break;
                        
                    default: break
                        
                }
                
                
                
            }
        }
        
        
        
        
        
        // Save the data to coredata
   //     (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
     //   let _ = navigationController?.popViewController(animated: true)
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

    func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
    
    func saveContext(){
        
    }
    
    @IBAction func cancelCreateProfile(_ sender: Any) {
        self.dismiss(animated: true) { 
            print("Cancel")
        }
    }
    
    //What happens if you don't pick anything
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func importImageButton(_ sender: Any) {
        
        myImagePicker.allowsEditing = false
        myImagePicker.sourceType = .photoLibrary
        present(myImagePicker, animated: true, completion: nil)
    }
}
