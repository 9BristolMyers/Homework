//
//  Account.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/18/21.
//

import Foundation

final class Account {
    
    private init() {}
    
    static let shared = Account()
    
    var name: String = ""
    var cash: Int = 0
}
