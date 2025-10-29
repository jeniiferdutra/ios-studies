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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PostView(post: PostMock[1])
}
