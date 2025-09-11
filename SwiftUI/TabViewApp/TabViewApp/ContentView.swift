//
//  ContentView.swift
//  TabViewApp
//
//  Created by Jenifer Rocha on 01/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Conteudo primeira tela")
                .tabItem {
                    if selection == 0 {
                        Image(systemName: "1.circle")
                    } else {
                        Image(systemName: "book.fill")
                    }
                    Text("Primeira tela")
                }
            tag(0)
            Text("Conteudo segunda tela")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "2.circle")
                    } else {
                        Image(systemName: "star")
                    }
                    Text("Segunda tela")
                }
            tag(1)
        }
        .tint(.red)
    }
}

#Preview {
    ContentView()
}
