//
//  ContentView.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/5/21.
//

import SwiftUI
import CoreData

struct NamedView {
    var name: String
    var view: AnyView

    init<V>(_ name: String, view: V) where V: View {
        self.name = name
        self.view = AnyView(view)
    }
}

struct ContentView: View {
    private let drawings: [NamedView] = [
        NamedView("Why does self work for ForEach?", view: HashableProtocol()),
        NamedView("Ensuring Core Data objects are unique using constraints", view: Constraintss()),
        NamedView("Fetching data using NSPredicate", view: nsPredicate()),
        NamedView("Dynamically filtering @FetchRequest with SwiftUI", view: DynamicFiltering()),
        
  ]

    var body: some View {
        NavigationView {
            List(0..<drawings.count) { i in
                NavigationLink(destination: self.drawings[i].view) {
                    Text(self.drawings[i].name)
                }
            }
            .navigationBarTitle("Drawing")
            .foregroundColor(.green)
            .font(.headline)
           
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
