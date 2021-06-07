//
//  Movie+CoreDataProperties.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/7/21.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16   
    
    public var wrappedTitle: String {
       return  title ?? "Unknown Title"
    }

}

extension Movie : Identifiable {

}
