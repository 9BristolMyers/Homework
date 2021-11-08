//
//  Friend3.swift
//  Lesson1.3Tests
//
//  Created by Владимир Рузавин on 10/28/21.
//

import Foundation
import SwiftyJSON

struct FriensJSON: Codable {
    
    let response: Response
}

struct Response: Codable {
    
    let count: Int
    let items: [Item]
}

struct Friend3: Codable {
    
    let id: Int
    let lastName: String
    let photo50: String
    let trackCode, firstName: String
    let photo100: String
    let deactivated: String?
    
    var fullName: String {
        firstName + lastName
    }
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case lastName = "last_name"
        case photo50 = "photo_50"
        case trackCode = "track_code"
        case firstName = "first_name"
        case photo100 = "photo_100"
        case deactivated
    }
}
