//
//  ListMove.swift
//  List
//
//  Created by Jenifer Rocha on 05/09/25.
//

import SwiftUI

struct ListMove: View {
    @State var itens = ["Elemento 1",
                        "Elemento 2",
                        "Elemento 3",
                        "Elemento 4",
                        "Elemento 5"]
    
    var body: some View {
        List($itens, id: \.self, editActions: .move) { $value in
            Text(value)
        }
    }
}

#Preview {
    ListMove()
}
