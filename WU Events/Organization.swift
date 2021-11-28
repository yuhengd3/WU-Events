//
//  Organization.swift
//  WU Events
//
//  Created by Raj Thaker on 11/28/21.
//

import Foundation
import UIKit

struct Organization {
    let name:String
    let profilePic:UIImage
    
    init(name:String, profilePic:UIImage) {
        self.name = name
        self.profilePic = profilePic
    }
}
