//
//  Navigation.swift
//  NavegacaoSimplesSwiftUI
//
//  Created by Jenifer Rocha on 25/08/25.
//

import SwiftUI

//MARK: NavigationView
// É um conteiner que fornece uma barra de navegacao no topo da tela. Voce pode adicionar visualizaçoes dentro do NavigationView e usar NavigationLink para navegar entre elas.


struct Navigation: View {
    var body: some View {
        NavigationView {
            NavigationLink("Ir para a tela 02") {
                Tela02()
            }
            .navigationTitle("Tela 01")
        }
    }
}

struct Tela02: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Tela 02")
            Button("Voltar") {
                dismiss()
            }
        }
        .navigationTitle("Tela 02")
    }
}

#Preview {
    Navigation()
}
