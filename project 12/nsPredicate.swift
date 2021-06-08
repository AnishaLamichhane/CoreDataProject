//
//  nsPredicate.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/7/21.
//

import CoreData
import SwiftUI

struct nsPredicate: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Ship.entity(), sortDescriptors: [], predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknown Name")
                 
            }
            
            Button("Add Examples") {
                let ship1 = Ship(context: self.moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Trek"
                
                let ship2 = Ship(context: self.moc)
                ship2.name = "Titanic"
                ship2.universe = "Star Trek"
                
                let ship3 = Ship(context: self.moc)
                ship3.name = "Milennium forcan"
                ship3.universe = "Star Wars"
                
                
                let ship4 = Ship(context: self.moc)
                ship4.name = "Milennium forcan"
                ship4.universe = "Star Wars"
                
                try? self.moc.save()
                
            }
        }
    }
}

struct nsPredicate_Previews: PreviewProvider {
    static var previews: some View {
        nsPredicate()
    }
}
