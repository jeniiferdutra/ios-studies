//
//  DetailView.swift
//  NavigationStack
//
//  Created by Jenifer Rocha on 28/08/25.
//

import SwiftUI

struct Detail: Hashable {
    var name: String
    var color: Color
}

struct DetailView: View {
    
    var model: Detail
    
    var body: some View {
        ZStack {
            model.color
            Text(model.name)
                .navigationTitle("Eu sou a tela 1")
        }
    }
}

#Preview {
    DetailView(model: Detail(name: "Jenifer", color: .red))
}
