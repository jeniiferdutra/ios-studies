//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Jenifer Rocha on 21/08/25.
//

import SwiftUI

// MARK: - Property Wrappers
// Sao como "atalhos" que voce coloca antes das propriedades no Swift, para adicionar regras especiais. Eles ajudam a economizar tempo e mamter o código organizado. Cada atalho @ tem uma funcao especifica, como controlar qnd as propriedades mudam ou limitar os valores que elas podem ter

// MARK: - @State
// É usado para criar uma propriedade mutavél dentro de uma view. Ele permite que a view observe mudancas nessa propriedade e atualizade automaticamente a interface quando ela muda. Usado principalmente para controlar o estado interno de uma view.

// MARK: - @Binding
// É usado para criar uma ligaçao entre uma propriedade de uma view pai e uma view filho. Isso permite que a view filho leia e atualize a propriedade original da view pai, mantendo-as sincronizadas. É útil quando vc deseja q as mudancas em uma view filho afetem a view pai.

// MARK: - @ObservedObject
// É usado para conectar uma instancia de uma classe observável (geralmente conformando o protocolo ObservedObject) a uma view. Isso permite que a view observe as mudanças de propriedades nessa classe e atualize quando ocorrerem alteraçoes.

// MARK: - @Published
// É usado dentro de classes observáveis para marcar propriedades específicas como "publicamente publicadas". Quando o valor de uma propriedade marcada com @Published muda, ele notifica automaticamente os observadores, como as views, para que possam ser atualizadas.

// MARK: - @Environment
// É usado para acessar valores ambientais (como tamanho de fonte, cores, etc...) fornecidos pelo ambiente de execuçao do aplicativo. Isso permite que as views acessem configuracoes globais sem passar esses valores manualmente.

// MARK: - @FetchRequest
// É usado com o Core Data para buscar dados do banco de dados. Ele aceita uma consulta e fornece os resultados como uma lista de objetos observaveis. Usado para exibir dados do banco de dados da interface.

// MARK: - @AppStorage @SceneStorage
// Ambos sao usados para armazenar dados de forma persistentes entre sessoes do aplicativo ou entre diferentes cenas em um aplicativo de várias janelas. O @AppStorage é para armazenar valores simples como numeros ou strings, enquanto o @SceneStorage é usado para armazenar dados especificos da cena.



struct ContentView: View {
    
    @State private var exibirMensagem: Bool = true
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            VStack {
                Text(exibirMensagem ? "Mundo" : "Olá")
                    .font(.system(size: 26, weight: .bold))
                Button("Alterar mensagem") {
                    exibirMensagem.toggle() // inverte o booleano = false vira true. substitue o if
                }
                .padding()
                .background(Color.blue)
                .foregroundStyle(Color.white)
                .cornerRadius(8)
            }
            VStack {
                Text(text)
                    .font(.system(size: 26, weight: .bold))
                TextField("Digite um texto", text:  $text)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
