//
//  NotesViewModel.swift
//  Notas
//
//  Created by Jenifer Rocha on 03/10/25.
//

import Foundation

class NotesViewModel: ObservableObject {
    
    @Published var notes: [Note] = [] {
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
