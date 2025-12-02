//
//  NotificationView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct NotificationView: View {
    
    @State private var viewModel: NotificationViewModel = NotificationViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack { // onde vai ficar as notificacoes
                    ForEach(viewModel.activityList) { activity in
                        ActivityView(activity: activity)
                    }
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
