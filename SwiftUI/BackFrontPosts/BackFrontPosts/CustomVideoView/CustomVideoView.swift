//
//  CustomVideoView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 04/11/25.
//

import SwiftUI
import AVKit

struct CustomVideoView: View {
    
    var videoURL: URL?
    @Binding var isMuted: Bool
    @State var player = AVPlayer()
    
    init(isMuted: Binding<Bool>, videoURL: String?) {
        _isMuted = isMuted
        self.videoURL = Bundle.main.url(forResource: videoURL, withExtension: "mp4")
        
    }
    
    var body: some View {
        if let url = videoURL {
            ZStack(alignment: .bottomTrailing) {
                VideoPlayer(player: player)
                    .onAppear { // apresentar na tela
                        player = AVPlayer(url: url)
                        player.play()
                        player.isMuted = isMuted
                    }
                Color.white.opacity(0)
                Button {
                    isMuted.toggle()
                } label: {
                    Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.2.fill")
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color.black.opacity(0.7))
                        .clipShape(Circle())
                }
                .padding(8)
            }
        } else {
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .foregroundStyle(.yellow)
                .frame(width: 50, height: 50)
            Text("Ops! Tivemos um problema com esse vídeo")
                .lineLimit(2)// quebra de linha
        }
    }
}

#Preview {
    CustomVideoView(isMuted: .constant(true), videoURL: "cars2")
}
