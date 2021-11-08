//
//  Friend1.swift
//  Lesson1.3Tests
//
//  Created by Владимир Рузавин on 10/28/21.
//

import Foundation
import SwiftyJSON

struct Friend1 {
    
    var id: Int = 0
    var firstName: String?
    var lastName: String?
    var photo100: String?
    
    var fullName: String {
        (firstName ?? "") + (lastName ?? "")
    }
    
    init(item: [String: Any]) {
        self.id = item["id"] as! Int
        self.firstName = item["first_name"] as? String
        self.lastName = item["last_name"] as? String
        self.photo100 = item["photo_100"] as? String
    }
}
