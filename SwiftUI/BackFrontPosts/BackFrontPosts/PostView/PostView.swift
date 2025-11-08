//
//  PostView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 28/10/25.
//

import SwiftUI

struct PostView: View {
    
    @Binding var post: PostData
    @Binding var isMuted: Bool
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
                    CustomVideoView(isMuted: $isMuted, videoURL: post.videoURL)
                        .frame(minHeight: 350)
                        .onTapGesture(count: 2, perform: {
                            tappedLike()
                        })
                }
                Image("white-heart")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .scaleEffect(isLikeAnimation ? 1 : 0) // o coracao aparece e some
                    .opacity(isLikeAnimation ? 1 : 0) // opacidade do coracao
                    .animation(.spring, value: isLikeAnimation) // disparar a animacao
            }
            HStack {
                Button {
                    post.isLiked.toggle()
                } label: {
                    Image(post.isLiked ? "like-selected" : "like")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                
                Button {
                    print("teste")
                } label: {
                    Image("coment")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                
                Button {
                    print("teste")
                } label: {
                    Image("share")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
                Button {
                    post.isSaved.toggle()
                } label: {
                    Image(post.isSaved ? "save-selected" : "save")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
            }
            .padding(.top, 8)
            .padding(.horizontal, 15)
            
            if !post.caption.isEmpty {
                HStack {
                    Text(post.userName)
                        .font(Font.system(size: 15, weight: .bold))
                    + Text("   ")
                    + Text(post.caption)
                        .font(Font.system(size: 15, weight: .regular))
                    
                    Spacer()
                }
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 15)
                .padding(.top, 2)
                .padding(.bottom, 10)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8)) // deixar o post com bordas
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
    @State var post = PostMock[2]
    return PostView(post: $post, isMuted: .constant(true)) // isMuted é o som do video, se ele vai ser mutado ou nao
}
