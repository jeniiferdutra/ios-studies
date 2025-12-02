//
//  AddNotesView.swift
//  Notas
//
//  Created by Jenifer Rocha on 07/10/25.
//

import SwiftUI

struct AddNotesView: View {
    
    @State var viewModel: NotesViewModel
    @State var note = Note()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Informe o titulo", text: $note.title)
            } header: {
                Text("Título")
            }
            
            Section {
                TextEditor(text: $note.content)
            } header: {
                Text("Conteúdo ")
            }
            
            Section {
                Button("Salvar") {
                    viewModel.notes.append(note)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    var viewModel: NotesViewModel
    return AddNotesView(viewModel: viewModel)
}
