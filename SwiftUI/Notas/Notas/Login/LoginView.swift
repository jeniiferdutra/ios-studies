//
//  LoginView.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundColor.ignoresSafeArea()
                VStack(spacing: 25.0) {
                    
                    Text("Login")
                        .font(.system(size: 55, weight: .bold))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Group {
                        TextField("", text: $email, prompt: Text("Email").foregroundStyle(.white))
                        SecureField("", text: $senha, prompt: Text("Senha").foregroundStyle(.white))
                    }
                    .frame(height: 40)
                    .padding(7)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 8).stroke(Color.pinkColor, lineWidth: 2)
                    })
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    LoginView()
}
