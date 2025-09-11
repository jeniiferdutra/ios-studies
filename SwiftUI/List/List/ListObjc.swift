//
//  ListObjc.swift
//  List
//
//  Created by Jenifer Rocha on 03/09/25.
//

import SwiftUI

struct Person: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

struct ListObjc: View {
    
    var list = [
        Person(name: "Jenifer"),
        Person(name: "Guilherme"),
        Person(name: "Duke")]
    
    var body: some View {
        List(list) { person in
            Text(person.name)
                .background(Color.red)
                .listRowBackground(Color.blue)
        }
    }
}

#Preview {
    ListObjc()
}
