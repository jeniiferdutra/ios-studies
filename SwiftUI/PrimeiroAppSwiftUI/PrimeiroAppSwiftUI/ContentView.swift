//
//  ContentView.swift
//  PrimeiroAppSwiftUI
//
//  Created by Jenifer Rocha on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8.0) {
            Group {
                Text("Welcome!!")
                Text("Bem vindo!!")
            }
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.red)
            .multilineTextAlignment(.leading)
        }
    }
}

// É usado apenas no Xcode para mostrar uma pré-visualização dessa View. Ele não faz parte do app final, serve só para o desenvolvedor ver no canvas
#Preview {
    ContentView()// Aqui a View ContentView é renderizada na prévia
}
