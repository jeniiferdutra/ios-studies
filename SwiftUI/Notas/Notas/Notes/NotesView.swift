//
//  NotesView.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI

struct NotesView: View {
    
    @StateObject var viewModel = NotesViewModel()
    @State var isGoAdditionalNote: Bool = false
    
    var body: some View {
        List($viewModel.notes, editActions: .all) { $note in
            NavigationLink {
                Color.red
            } label: {
                HStack {
                    Image(systemName: "pencil")
                        .frame(width: 24, height: 24)
                        .padding(.trailing, 8)
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .font(.headline)
                        Text(note.content)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationTitle("Notas")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Adicionar") {
                    isGoAdditionalNote.toggle()
                }
            }
        }
        .sheet(isPresented: $isGoAdditionalNote) {
            AddNotesView(viewModel: viewModel)
        }
    }
}

#Preview {
    NavigationStack { // ela sera uma navigation
        NotesView()
    }
}
