//
//  ContentView.swift
//  ForEach
//
//  Created by Jenifer Rocha on 02/09/25.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    
    var name: String
    var age: Int
}


struct ContentView: View {
    
    let list: [String] = ["Lana del Rey", "The Weeknd", "Cazuza"]
    
    var listPerson: [Person] = [
        Person(name: "jenifer", age: 25),
        Person(name: "guilherme", age: 31),
        Person(name: "duke", age: 12),
        
    ]
    
    var body: some View {
        
        //MARK: ForEach com array simples
        VStack {
            // identificador vai ser ele mesmo: self
            ForEach(list, id: \.self) { value in
                Text(value)
            }
        }
        .padding()
        
        //MARK: ForEach com array de objeto
        VStack {
            // identificador vai ser ele mesmo: self
            ForEach(listPerson) { person in
                VStack {
                    Text("name: \(person.name)")
                    Text("age: \(person.age)")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
