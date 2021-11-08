//
//  Human+CoreDataProperties.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/31/21.
//
//

import Foundation
import CoreData


extension Human {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Human> {
        return NSFetchRequest<Human>(entityName: "Human")
    }

    @NSManaged public var birthday: Date?
    @NSManaged public var name: String?
    @NSManaged public var gender: Bool

}

extension Human : Identifiable {

}
