//
//  NotificationView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack { // onde vai ficar as notificacoes
                    Text("Notification")
                }
            }
            .navigationTitle("Notificaçoes")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NotificationView()
}
