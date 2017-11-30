//
//  CreateProfileViewController.swift
//  Current
//
//  Created by Dominic Pilla on 11/2/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class CreateProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var createProfileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createProfileTableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = createProfileTableView.dequeueReusableCell(withIdentifier: "createProfileCell", for: indexPath)
        
        
        
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
