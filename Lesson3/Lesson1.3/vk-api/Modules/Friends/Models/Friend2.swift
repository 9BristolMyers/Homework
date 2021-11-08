//
//  Friend2.swift
//  Lesson1.3Tests
//
//  Created by Владимир Рузавин on 10/28/21.
//

import Foundation
import SwiftyJSON

struct Friend2 {
    
    var id: Int = 0
    var firstName: String = ""
    var lastName: String = ""
    var photo100: String = ""
    
    var fullName: String {
        firstName + lastName
    }
    
    init(json: JSON) {
        self.id = json["id"].intValue
        self.firstName = json["first_name"].string
        self.lastName = json["last_name"].string
        self.photo100 = json["photo_100"].string
    }
}
