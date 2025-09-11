//
//  ContentView.swift
//  BottomSheet
//
//  Created by Jenifer Rocha on 01/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var presentation: Bool = false
    
    var body: some View {
        VStack {
            Button("Exibir tela 2") {
                presentation.toggle()
            }
            .sheet(isPresented: $presentation) {
                Text("Oii mundo!!")
                    .presentationDetents([.medium, .large])
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
