//
//  PostView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 28/10/25.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostData
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(post.profileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.gray, lineWidth: 0.5)
                    }
                Text(post.userName)
                    .font(Font.system(size: 14, weight: .semibold))
                Spacer()
                Button {
                    print("test ")
                } label: {
                    Image("more")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }

            }
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    PostView(post: PostMock[1])
}
