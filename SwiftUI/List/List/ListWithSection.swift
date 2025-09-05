//
//  ListWithSection.swift
//  List
//
//  Created by Jenifer Rocha on 04/09/25.
//

import SwiftUI

struct ListWithSection: View {
    var body: some View {
        List {
            Section {
                Text("Minha primeira section")
            }
            
            Section {
                Text("Minha primeira section")
            }
            
            Section("Minha terceira section") {
                Text("Teste 1")
                Text("Teste 2")
                Text("Teste 3")
                Text("Teste 4")
                Text("Teste 5")
            }
            
            Section {
                Text("Minha quarta section")
                Text("Teste 1")
                Text("Teste 2")
                Text("Teste 3")
                Text("Teste 4")
                Text("Teste 5")
            } header: {
                HeaderView()
            }
        }
        .listStyle(.inset)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.brown)
            VStack {
                Text("Jenifer")
                Text("Developer")
            }
        }
    }
}


#Preview {
    ListWithSection()
}
