//
//  ContentView.swift
//  LayoutSwiftUI
//
//  Created by Jenifer Rocha on 20/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            Text("Meu primeiro elemento")
            Text("Meu segundo elemento")
            Text("Meu terceiro elemento")
        }
        HStack(spacing: 5.0) {
            Image(systemName: "circle.fill")
            Image(systemName: "square.fill")
            Image(systemName: "triangle.fill")
        }
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Text("Testo teste")
                .background(Color.green)
        }
        
    }
}

#Preview {
    ContentView()
}
