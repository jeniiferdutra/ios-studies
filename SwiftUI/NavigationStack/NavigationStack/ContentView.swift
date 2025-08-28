//
//  ContentView.swift
//  NavigationStack
//
//  Created by Jenifer Rocha on 27/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: NavigationStack
        
        NavigationStack {
            VStack(spacing: 10.0) {
                NavigationLink("Ir para tela 1") {
                    Text("Sou a tela 1")
                }
                NavigationLink("Ir para tela 2") {
                    Text("Sou a tela 2")
                }
            }
        }
        
        //MARK: NavigationStack Destination
        
        NavigationStack {
            VStack(spacing: 10.0) {
                NavigationLink("Ir para tela 1", value: "Sou a tela 1")
                NavigationLink("Ir para tela 2", value: Color.red)
            }
            .navigationDestination(for: String.self) { value in
                DetailView(text: value)
            }
            .navigationDestination(for: Color.self) { value in
                ZStack {
                    value
                }
            }
            .navigationTitle("Hello world")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
