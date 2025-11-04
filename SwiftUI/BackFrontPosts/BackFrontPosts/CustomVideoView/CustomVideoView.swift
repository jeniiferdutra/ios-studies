//
//  CustomVideoView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 04/11/25.
//

import SwiftUI

struct CustomVideoView: View {
    
    @State var videoURL: URL?
    @Binding var isMuted: Bool
    
    init(isMuted: Binding<Bool>, videoURL: String) {
        _isMuted = isMuted
        self.videoURL = Bundle.main.url(forResource: videoURL, withExtension: "mp4")
        
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CustomVideoView(isMuted: .constant(true), videoURL: "demo2")
}
