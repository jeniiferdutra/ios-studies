//
//  UserModel.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 26/05/25.
//

import Foundation

struct UserModel: Codable {
    let email: String // Nao é permitido passar valor neles a nao ser por um dos inicializadores
    let password: String
    
    // Inicializador padrão: cria um UserModel com strings vazias
    init() {
        self.email = String()
        self.password = String()
    }
    
    // Inicializador personalizado: permite criar um UserModel com email e senha específicos
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
