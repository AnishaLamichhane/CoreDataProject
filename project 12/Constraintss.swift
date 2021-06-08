//
//  Constraintss.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/7/21.
//

import SwiftUI
import CoreData

struct Constraintss: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Wizard.entity(), sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View {
        VStack {
            List(wizards, id: \.self) { wizard in
                Text(wizard.name ?? "Unknown")
                
            }
            Button("Add") {
                let wizard = Wizard(context: self.moc)
                wizard.name = "Harry Potter"
            }
            
            Button("Save") {
                do{
                    try self.moc.save()
                } catch {
                    print(error.localizedDescription)
                }
            }
            
        }
    }
}

struct Constraintss_Previews: PreviewProvider {
    static var previews: some View {
        Constraintss()
    }
}
