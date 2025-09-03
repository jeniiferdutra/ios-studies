//
//  ContentView.swift
//  ScrollView
//
//  Created by Jenifer Rocha on 02/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 15.0) {
                    ForEach(0..<26) { index in
                        Text("Posicao -> \(index)")
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(Color.green)
                    }
                    Text("Teste")
                        .frame(maxWidth: .infinity)
                        .frame(height: 35)
                        .background(Color.purple)
                        .font(.title)
                    
                    Text("Teste")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.red)
                        .font(.title)
                    
                    Text("Teste")
                        .frame(maxWidth: .infinity)
                        .frame(height: 140)
                        .background(Color.orange)
                        .font(.title)
                }
            }
            ScrollView(.horizontal, showsIndicators: false) { // remover a barra de scroll
                LazyHStack(spacing: 15.0) {
                    ForEach(0..<26) { index in
                        Text("Posicao -> \(index)")
                            .frame(height: 45)
                            .background(Color.blue)
                            .onTapGesture {
                                print("Clicou na posicao \(index)")
                            }
                    }
                }
            }.frame(height: 60)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
