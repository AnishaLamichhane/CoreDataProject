//
//  ContentView.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach([2, 4, 6, 8 , 10], id: \.self) {
                Text("\($0) is even")
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
