//
//  ContentView.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/5/21.
//

import SwiftUI


struct ContentView: View {
    let students = [Student(name: "Harry Potter"), Student(name: "Ginger Lashun")]
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
