//
//  User.swift
//  Current
//
//  Created by Murphy Basil Ward on 11/7/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class CurrentUser: NSObject {
    var email : String?
    var firstName : String?
    var lastName : String?
    var password : String?
    var userName : String?
    
    init(email: String, firstName: String, lastName : String, password : String, userName : String) {
    self.email = email
    self.firstName = firstName
    self.lastName = lastName
    self.password = password
    self.userName = userName
    
    }
  
    convenience override init() {
        self.init(email: "", firstName: "", lastName : "", password : "", userName : "")
    }
    
    
}