//
//  NotesViewModel.swift
//  Notas
//
//  Created by Jenifer Rocha on 03/10/25.
//

import Foundation

class NotesViewModel: ObservableObject {
    
    @Published var notes: [Note] = [Note(title: "Titulo", content: "Descricao do conteudo")]
    
}
