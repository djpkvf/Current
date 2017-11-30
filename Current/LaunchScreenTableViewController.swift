//
//  LaunchScreenTableViewController.swift
//  Current
//
//  Created by Murphy Basil Ward on 10/15/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit
import Firebase

class LaunchScreenTableViewController: UITableViewController { //Eventually we need to change to a view controller with a nested table view or size classes or something

    //size of the labels
        let c = [[150, 10, 300, 50], [150,14,300,30], [20,14,300,30], [20,14,300,30], [20,14,300,30], [20,14,300,30],]
        var usersLabel = UILabel()
  
    //In this cell array format we can inform what each section will be
    let cellContent = ["Current", "CurrentC.png", "username", "password", "stay logged in", "Create a Profile", "#of users"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        let reference = Firebase.Database.database().reference(fromURL: "https://current-79dd0.firebaseio.com/")
        reference.updateChildValues(["someValue" : 123123])
        
        Firebase.Auth.auth()
         */

        
        //let d =
      //var d =
      /*
        
        //navigation bar
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenwidth, height: 44))
        self.view.addSubview(navBar);
        let navItem = UINavigationItem(title: "SomeTitle");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(getter: UIAccessibilityCustomAction.selector));
        navItem.rightBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
        
        
        
        
        let btn1 = UIButton(type: .custom)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
       // btn1.addTarget(self, action: #selector("prepare"), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "imagename"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
      //  btn2.addTarget(self, action: #selector("prepare"), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        
        self.navigationItem.setRightBarButtonItems([item1,item2], animated: true)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    */}

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
        return cellContent.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

       
        //let cellContent = ["Current", "Emblem", " ", " ", " ", "username", "password", "stay logged in", "#of users"]
       //declare placeholders for the data
        var myButton : UIButton, myLabel : UILabel, myImage : UIImage, myTextField : UITextField, myImageView : UIImageView, mySwitch : UISwitch, myView : UIView
        /*
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(0,0,100,200)
        self.view.addSubview(bgImage!)
        */
        
        //Fill each Cell
        switch indexPath.row{
        case 0:
            //create button
           // myButton = createButton(myText: cellContent[0], font: "Avenir", fontSize: 42)
            myButton = createButton(myText: cellContent[0], font: "Avenir", fontSize: 42, x: 100, y: 0, width: 200, height: 100)
            myButton.addTarget(self, action: #selector(rippleForUsers), for: .touchUpInside)
            cell.addSubview(myButton)
            break
        case 1:
            //create image
            myImage = createImage(imageName: cellContent[1] + ".png")
            myImageView = UIImageView(image: myImage)
            myImageView.frame = CGRect(x: 80, y: 0, width: 300, height: 200)
            
            cell.addSubview(myImageView)
            break
        case 2:
            //create textfield
            myTextField = createTextField(placeHolderText: cellContent[2], x: 10, y: 0, width: 300, height: 50)
            cell.addSubview(myTextField)
            break
        case 3:
            //create textfield
            myTextField = createTextField(placeHolderText: cellContent[3], x: 10, y: 0, width: 300, height: 50)
            cell.addSubview(myTextField)
            break
        case 4:
            //create checkbox
            myLabel = createLabel(stringName: cellContent[4], x: 10, y: 0, width: 200, height: 75)
           
            
            mySwitch = createSwitch(x: 120, y: 20, width: 20, height: 75)
            myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 75))
            myView.addSubview(myLabel)
            myView.addSubview(mySwitch)

            cell.addSubview(myView)
            break
        case 5:
            myButton = createButton(myText: cellContent[5], font: "Avenir", fontSize: 18, x: 0, y: 0, width: 200, height: 50)
            myButton.setTitleColor(UIColor.black, for: .normal)
            myButton.addTarget(self, action: #selector(createProfile), for: .touchUpInside)
            cell.addSubview(myButton)
            
            break
        case 6:
            //create label
            myLabel = createLabel(stringName: cellContent[6], x: 0, y: 0, width: 200, height: 50)
            usersLabel = myLabel
            myLabel.isHidden = true
            cell.addSubview(myLabel)
            break
        default:
            break
        }
        //Some change
    
        //Remove the lines per cell
        self.tableView.separatorStyle = .none

        //how one interacts with the cells in general
        cell.selectionStyle = .none
        
        //Return that boy
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height:CGFloat = CGFloat()
        
        
        switch indexPath.row{
            
        case 0:
            height = 100
            break
            
        case 1:
            height = 150
            break
            
        case 2:
            height = 70
            break
            
        case 3:
            height = 70
            break
            
        case 4:
            height = 75
            break
            
        case 5:
            height = 50
            break
        
        case 6:
                height = 50
            break
            
        default:
            
            break
        }
        
        return height
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
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
    
    
    }
 

    
    
    
    //Check how many users are near this device(~)
    @objc func rippleForUsers() -> Int{
        print("Button pressed")
        var numberOfUsers : Int = -1
        
        //Functionality
        numberOfUsers = 0
        var myString = String(numberOfUsers)
        
        usersLabel.text = myString + " Users near you"
        usersLabel.isHidden = false
        return numberOfUsers
    }
    
    //Create Button
    func createButton(myText : String, font : String, fontSize : Float ) ->UIButton{
        let button = UIButton(type: UIButtonType.system) as UIButton
        button.frame = CGRect(x: 0, y: 50, width: 300, height: 50)
        button.titleLabel?.font = UIFont(name: font, size: CGFloat(fontSize))
        button.setTitle(myText, for: .normal)
        return button
    }
    
    func createButton(myText : String, font : String, fontSize : Float, x: Double, y: Double, width: Double, height: Double ) ->UIButton{
        let button = UIButton(type: UIButtonType.system) as UIButton
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.titleLabel?.font = UIFont(name: font, size: CGFloat(fontSize))
        button.setTitle(myText, for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        return button
    }
    
    func createImage(imageName : String) -> UIImage{
         if let myImage = UIImage(named: imageName)
         {
            
         return myImage
        }
        return UIImage(imageLiteralResourceName: "sonarPing.jpeg")
    }
    
    func createLabel(stringName : String, x : Double, y : Double, width :  Double, height :Double) -> UILabel{
        let myLabel = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
       myLabel.text = stringName
        return myLabel
    }

    func createLabel(stringName : String) ->UILabel
    {
     let myLabel = UILabel(frame: CGRect(x: 0, y: 50, width: 300, height: 50))  //implement standard size
        myLabel.text = stringName
        
        return myLabel
    }
    
    func createTextField(placeHolderText : String) -> UITextField{
        let myTextField = UITextField(frame: CGRect(x: 20.0, y: 30.0, width: 100.0, height: 75.0))
        myTextField.backgroundColor = UIColor.clear
        myTextField.textColor = UIColor.black
        myTextField.borderStyle = UITextBorderStyle.bezel
        myTextField.placeholder = placeHolderText
        
        return myTextField
    }
   
    
    func createTextField(placeHolderText : String, x: Double, y : Double, width : Double, height : Double) -> UITextField{
        let myTextField = UITextField(frame: CGRect(x: x, y: y, width: width, height: height))
        myTextField.backgroundColor = UIColor.clear
        myTextField.textColor = UIColor.black
        myTextField.borderStyle = UITextBorderStyle.bezel
        myTextField.placeholder = placeHolderText
        
        return myTextField
    }
    
    func createSwitch(x: Double, y: Double, width: Double, height : Double)-> UISwitch{
        let mySwitch = UISwitch(frame: CGRect(x: x, y: y, width: width, height: height))
        mySwitch.isOn = false
        
        return mySwitch
    }
    
    @objc func createProfile(){
        //prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
    }
  
}
