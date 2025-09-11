//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Jenifer Rocha on 21/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 15.0) {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold))
                Image("LOGO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                TextField("Digite seu email:", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black) // cor de texto
                    .keyboardType(.emailAddress)
                
                SecureField("Digite sua senha", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black) // cor de texto
                    .keyboardType(.default)
                
                Button {
                    print("Clique no botao!!")
                } label: {
                    Text("Login")
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color(red: 228/255, green: 50/255, blue: 128/255))
                        .cornerRadius(8)
                }
                
                HStack {
                    Text("Nao tem conta?")
                        .foregroundStyle(.white)
                    Button {
                        print("Clique no botao cadastre-se!!")
                    } label: {
                        Text("Cadastre-se")
                            .foregroundStyle(Color(red: 228/255, green: 50/255, blue: 128/255))
                            .font(.system(size: 18, weight: .semibold))
                    }
                }
                
                Spacer() // maximo de espacamento
            }
            .padding(.horizontal, 20.0) // da pra simplificar e colocar na VStack por inteiro
        }

    }
}

#Preview {
    ContentView()
}
