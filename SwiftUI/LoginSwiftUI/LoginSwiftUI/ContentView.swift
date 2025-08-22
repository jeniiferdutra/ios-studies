//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Jenifer Rocha on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold))
                Image("LOGO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                TextField("Digite seu email:", text: $email)
                    .padding(.horizontal, 20.0)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black) // cor de texto
                    .keyboardType(.emailAddress)
                
                Spacer() // maximo de espacamento
            }
        }
    }
}

#Preview {
    ContentView()
}
