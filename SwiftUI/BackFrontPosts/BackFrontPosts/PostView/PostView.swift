//
//  PostView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 28/10/25.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostData
    @State var isLikeAnimation: Bool = false
    
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
            
            ZStack {
                if !post.isVideo { // se nao for video
                    Image(post.postImage ?? "error")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture(count: 2, perform: { // acao do like ao clicar 2 vezes
                            tappedLike()
                        })
                } else {
                    
                }
                Image("white-heart")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .scaleEffect(isLikeAnimation ? 1 : 0) // o coracao aparece e some
                    .opacity(isLikeAnimation ? 1 : 0) // opacidade do coracao
                    .animation(.spring, value: isLikeAnimation) // disparar a animacao
            }
            
        }
    }
    
    func tappedLike() {
        isLikeAnimation = true
        post.isLiked = true
    }
    
    func hideAnimation() { // coracao sumir depois do clique
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation {
                isLikeAnimation = false
            }
        }
    }
    
}
#Preview {
    PostView(post: PostMock[1])
}
