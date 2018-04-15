//
//  Person+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Mohamed Sobhi  Fouda on 4/15/18.
//  Copyright © 2018 Mohamed Sobhi Fouda. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var age: Int32
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?

}
