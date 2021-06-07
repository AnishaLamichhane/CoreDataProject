//
//  ContentView.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/5/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    let students = [Student(name: "Harry Potter"), Student(name: "Ginger Lashun")]
    var body: some View {
        VStack {
            Button("Save") {
                if self.moc.hasChanges {
                    try? self.moc.save()
                }
               
            }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
