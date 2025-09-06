//
//  ContentView.swift
//  Form
//
//  Created by Jenifer Rocha on 06/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome: String = ""
    @State var email: String = ""
    @State var feedback: String = ""
    @State var nota: Float = 5
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundStyle(Color.gray)
                        TextField("Nome", text: $nome)
                    }
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundStyle(Color.gray)
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                    }
                    
                } header: {
                    Text("Informacoes pessoais")
                }
                
                Section {
                    ZStack {
                        if feedback.isEmpty {
                            Text("Digite seu feedback aqui")
                                .foregroundStyle(Color.gray)
                        }
                        TextEditor(text: $feedback)
                    }
                } header: {
                    Text("Informe seu feedback")
                }
                
                Section {
                    
                } header: {
                    HStack {
                        Text("1")
                        Slider(value: $nota, in: 1...10, step: 1)
                        Text("10")
                    }
                }

                
            }
        }
    }
}

#Preview {
    ContentView()
}
