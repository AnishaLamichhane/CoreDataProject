//
//  DynamicFiltering.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/8/21.
//

import SwiftUI

struct DynamicFiltering: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "A"
    var body: some View {
        VStack {
            
            FilteredList(filterKey: "lastName", filterValue: lastNameFilter) {
                (singer: Singer)  in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
//            list of matching example
            
            Button("Add Example") {
                let taylor = Singer(context: self.moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: self.moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: self.moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"
                
                try? self.moc.save()
            }
            
            Button("Show A") {
                self.lastNameFilter = "A"
            }
            
            Button("Show S") {
                self.lastNameFilter = "S"
            }
        }
    }
}

struct DynamicFiltering_Previews: PreviewProvider {
    static var previews: some View {
        DynamicFiltering()
    }
}
