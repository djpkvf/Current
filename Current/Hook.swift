//
//  Hook.swift
//  Current
//
//  Created by Murphy Basil Ward on 11/15/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import Foundation


class Hook: NSObject {
//    var email : String?
//    var firstName : String?
//    var lastName : String?
//    var password : String?
//    var userName : String?
    var name: String?
    var ownerUserId : String? //CurrentUser.username
    var startDate: NSDate?
    var expirationDate: NSDate?
    var members : [CurrentUser]?
    var filters : [FiltersTableViewController.filters]?
    var maxMembers: Int
    var currentNumberOfMembers : [CurrentUser]?
    var hookId : String?
    
    
    init(name: String, ownerUserId : String, startDate: NSDate?, expirationDate: NSDate?, members : [CurrentUser]?, filters : [FiltersTableViewController.filters]?, maxMembers: Int, currentNumberOfMembers : [CurrentUser]?, hookId : String?) {
        
        self.name = name
        self.ownerUserId = ownerUserId //CurrentUser.username
        self.startDate = startDate
        self.expirationDate = expirationDate
        self.members = members
        self.filters = filters
        self.maxMembers = maxMembers
        self.currentNumberOfMembers = currentNumberOfMembers
        self.hookId = hookId
    }
}
