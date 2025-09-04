//
//  ContentView.swift
//  List
//
//  Created by Jenifer Rocha on 03/09/25.
//

import SwiftUI

struct ListBasic: View {
    
    var itens = ["Elemento 1",
                 "Elemento 2",
                 "Elemento 3",
                 "Elemento 4",
                 "Elemento 5"]
    
    var body: some View {
        List(itens, id: \.self) { value in
            Text(value)
        }
    }
}

#Preview {
    ListBasic()
}
