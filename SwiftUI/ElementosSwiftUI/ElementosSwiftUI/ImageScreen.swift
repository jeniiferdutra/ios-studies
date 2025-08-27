//
//  ImageScreen.swift
//  ElementosSwiftUI
//
//  Created by Jenifer Rocha on 26/08/25.
//

import SwiftUI

struct ImageScreen: View {
    var body: some View {
        Image(systemName: "trash")
            .resizable()//pega toda a proporcao da img
            .rotationEffect(.degrees(40))
            .frame(width: 250, height: 250)
            .background(Capsule().stroke(.pink, lineWidth: 2))
            .shadow(radius: 10)
            .onTapGesture {
                print("Cliquei na imagem")
            }
    }
}

#Preview {
    ImageScreen()
}
