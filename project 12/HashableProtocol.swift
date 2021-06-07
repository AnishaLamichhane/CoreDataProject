//
//  HashableProtocol.swift
//  project 12
//
//  Created by Anisha Lamichhane on 6/7/21.
//

import SwiftUI

struct Student: Hashable {
    let name : String
}

struct HashableProtocol: View {
    let students = [Student(name: "Harry Potter"), Student(name: "Ginger Lashun")]
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct HashableProtocol_Previews: PreviewProvider {
    static var previews: some View {
        HashableProtocol()
    }
}
