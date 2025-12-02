//
//  ProfileView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    UserProfileView()
                    HighlightView(data: viewModel.highlightData)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                
                ToolbarItem(placement: .topBarLeading) {
                    Text("Backfrontacademy")
                        .font(Font.system(size: 22, weight: .bold))
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("test")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 32, height: 22)
                    }
                }
            })
        }
    }
}

#Preview {
    ProfileView()
}
