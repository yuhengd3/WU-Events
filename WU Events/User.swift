//
//  User.swift
//  WU Events
//
//  Created by Raj Thaker on 11/28/21.
//

import Foundation
import UIKit

struct User {
    let firstName:String
    let lastName:String
    let userName:String
    let profilePic:UIImage
    
    init(firstName:String, lastName:String, userName:String, profilePic:UIImage) {
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.profilePic = profilePic
    }
}
