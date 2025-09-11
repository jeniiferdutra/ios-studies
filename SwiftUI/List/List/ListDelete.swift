//
//  ListDelete.swift
//  List
//
//  Created by Jenifer Rocha on 05/09/25.
//

import SwiftUI

struct ListDelete: View {
    
    @State var itens = ["Elemento 1",
                 "Elemento 2",
                 "Elemento 3",
                 "Elemento 4",
                 "Elemento 5"]
    
    var body: some View {
        List {
            ForEach(itens, id: \.self) { value in
                Text(value)
                    .deleteDisabled(value == "Elemento 1") //desabilitando para q n possa deletar
            }
            .onDelete { indexSet in // deletar direto na tela
                itens.remove(atOffsets: indexSet)
            }
        }
    }
}

#Preview {
    ListDelete()
}
