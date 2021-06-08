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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DynamicFiltering_Previews: PreviewProvider {
    static var previews: some View {
        DynamicFiltering()
    }
}
