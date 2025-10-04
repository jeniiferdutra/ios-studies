//
//  NotesView.swift
//  Notas
//
//  Created by Jenifer Rocha on 11/09/25.
//

import SwiftUI

struct NotesView: View {
    
    @StateObject var viewModel = NotesViewModel()
    
    var body: some View {
        List($viewModel.notes, editActions: .all) { $note in
            Text(note.title)
            Text(note.content)
        }
    }
}

#Preview {
    NavigationStack { // ela sera uma navigation
        NotesView()
    }
}
