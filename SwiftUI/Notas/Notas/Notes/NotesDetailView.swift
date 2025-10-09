//
//  NotesDetailView.swift
//  Notas
//
//  Created by Jenifer Rocha on 08/10/25.
//

import SwiftUI

struct NotesDetailView: View {
    
    @Binding var note: Note
    @State var noteState: Note
    @Environment(\.dismiss) var dismiss
    
    init(note: Binding<Note>) {
        _note = note
        _noteState = State(initialValue: note.wrappedValue)
    }
    
    var body: some View {
        VStack {
            TextField("Titulo", text: $noteState.title)
                .font(.title)
            TextEditor(text: $noteState.content)
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Detalhes")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Salvar") {
                    note = noteState
                }
                .disabled(isEqualNotes)
            }
        }
    }
    
    var isEqualNotes: Bool {
        note == noteState
    }
}

#Preview {
    @Previewable @State var note = Note(title: "Ir ao mercado", content: "Lembrar de comprar carnes, legumes, farinha, etc...")
    NavigationStack {
        NotesDetailView(note: $note)
    }
}
 
