//
//  ContentView.swift
//  NavegacaoSimplesSwiftUI
//
//  Created by Jenifer Rocha on 25/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresetend = false
    @State private var isPresetendFullScreen = false
    
    var body: some View {
        VStack {
            VStack(spacing: 20.0) {
                Button("Apresentar sheet") {
                    isPresetend.toggle()
                }
                .sheet(isPresented: $isPresetend) {
                    SheetView()
                }
                Button("Apresentar full screen") {
                    isPresetendFullScreen.toggle()
                }
                .fullScreenCover(isPresented: $isPresetendFullScreen) {
                    SheetView()
                }
            }
            
        }
        .padding()
    }
    
}

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Deuu bom!!")
                Button("Voltar") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

