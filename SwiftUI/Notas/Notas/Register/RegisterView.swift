//
//  RegisterView.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email: String = ""
    @State var senha: String = ""
    @State var confirmeSenha: String = ""
    @State var isPresentedAlert: Bool = false
    @State var goNotes: Bool = false

    
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            VStack(spacing: 25.0) {
                
                Text("Cadastrar")
                    .font(.system(size: 55, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 5)
                    .padding(.bottom, 50)
                                
                Group {
                    TextField("", text: $email, prompt: Text("Email").foregroundStyle(.white))
                    SecureField("", text: $senha, prompt: Text("Senha").foregroundStyle(.white))
                    SecureField("", text: $confirmeSenha, prompt: Text("Confirme a Senha").foregroundStyle(.white))
                }
                .frame(height: 40)
                .padding(7)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 8).stroke(Color.pinkColor, lineWidth: 2)
                })
                .foregroundStyle(.white)
                .autocorrectionDisabled() // autocorrecao
                .textInputAutocapitalization(.never) // primeira letra maiuscula
                
                Spacer()
                
                Button {
                    if senha == confirmeSenha {
                        goNotes.toggle()
                    } else {
                        isPresentedAlert.toggle()
                    }
                } label: {
                    Text("Cadastrar")
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold))
                        .background(isDisabledRegisterButton ? Color.pinkColor.opacity(0.6) : Color.pinkColor)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .disabled(isDisabledRegisterButton)
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 50)
        }
        .alert("Atencao!", isPresented: $isPresentedAlert) {
            Button("OK", role: .cancel) {}
        } message: {
             Text("Verifique a senha e confirme a senha e tente novamente")
        }
        .navigationDestination(isPresented: $goNotes) {
            NotesView()
        }
    }
    
    var isDisabledRegisterButton: Bool { // verificar se sao empty
        return email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || senha.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || confirmeSenha.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}

#Preview {
    NavigationStack {
        RegisterView()
    }
}
