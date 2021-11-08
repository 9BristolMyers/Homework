//
//  Session.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/25/21.
//

import Foundation
import SwiftKeychainWrapper

final class Session {
    
    private init() {}
    
    static let shared = Session()
    
    var token: String {
        set {
            
            UserDefaults.standard.integer(newValue, forKey: "userId")
        }
        get {
            
            return UserDefaults.standard.string(forKey: "userId") ?? ""
        }
    var userId: Int {
        set {
            
            UserDefaults.standard.integer(newValue, forKey: "userId")
        }
        get {
            
            return UserDefaults.standard.integer(forKey: "userId")
        }
    }
}
