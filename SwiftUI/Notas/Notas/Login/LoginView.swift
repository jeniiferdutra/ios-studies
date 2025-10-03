//
//  LoginView.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    @State var goRegister: Bool = false
    @State var goNotes: Bool = false
    @State var errorMessage: String = ""
    @State var isPresentedAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.backgroundColor.ignoresSafeArea()
                VStack(spacing: 25.0) {
                    
                    Text("Login")
                        .font(.system(size: 55, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(.top, 20)
                    
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
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    
                    Spacer()
                    
                    Button {
                        loginUser()
                    } label: {
                        Text("Login")
                            .frame(width: 180, height: 45)
                            .foregroundStyle(.white)
                            .font(.system(size: 18, weight: .bold))
                            .background(Color.pinkColor)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    Spacer()
                    
                    Button {
                        goRegister.toggle()
                    } label: {
                        Text("Nao tem conta? Cadastre-se")
                            .frame(height: 45)
                            .foregroundStyle(.white)
                            .font(.system(size: 18, weight: .bold))
                    }

                }
                .padding(.horizontal, 20)
                .padding(.bottom, 50)
            }
            .alert("Atencao!", isPresented: $isPresentedAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(errorMessage)
            }
            .navigationDestination(isPresented: $goRegister) {
                RegisterView()
            }
            .navigationDestination(isPresented: $goNotes) {
                NotesView()
            }
        }
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: senha) { result, error  in
            if let error { 
                errorMessage = error.localizedDescription
                isPresentedAlert.toggle()
            } else {
                goNotes.toggle()
            }
        }
    }
}

#Preview {
    LoginView()
}
