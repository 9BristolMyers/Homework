//
//  Data+PrettyJSON.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/26/21.
//

import Foundation

extension Data {
    
    var prettyJSON: NSString? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return nil }
        
        return prettyPrintedString
    }
}
