//
//  NotesViewModel.swift
//  Notas
//
//  Created by Jenifer Rocha on 03/10/25.
//

import Foundation

// Observable → lida com dados que mudam com o tempo.
// ObservableObject → faz a tela mudar quando os dados mudam.

@Observable
class NotesViewModel {
    
    var notes: [Note] = [] {
        didSet { // toda vez q fazer att no notes, eu quero que salve em saveNotes()
            saveNotes()
        }
    }
    
    init() { // criar um construtor
        guard let data = UserDefaults.standard.data(forKey: "notes") else { return } // pegar info da chave "notes
        if let getNotes = try? JSONDecoder().decode([Note].self, from: data) { // decodifica data em array de Note
            self.notes = getNotes
        }
    }
    
    func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.setValue(encoded, forKey: "notes")
        }
    }
    
}
