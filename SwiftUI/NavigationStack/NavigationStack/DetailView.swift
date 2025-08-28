//
//  DetailView.swift
//  NavigationStack
//
//  Created by Jenifer Rocha on 28/08/25.
//

import SwiftUI

struct DetailView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
    }
}

#Preview {
    DetailView(text: "Essa é a tela 1")
}
