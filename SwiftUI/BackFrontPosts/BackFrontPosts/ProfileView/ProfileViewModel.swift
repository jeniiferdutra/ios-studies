//
//  ProfileViewModel.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 19/11/25.
//

import UIKit

@Observable
class ProfileViewModel {
    
    var highlightData: [HighlightData] = [
        HighlightData(name: "Recordações", cover: "h-1"),
        HighlightData(name: "Depoimentos", cover: "h-1"),
        HighlightData(name: "Quem somos", cover: "h-1"),
        HighlightData(name: "Eventos", cover: "h-1"),
        HighlightData(name: "Palestras", cover: "h-1"),
        HighlightData(name: "Perguntas", cover: "h-1"),
        HighlightData(name: "Live", cover: "h-1"),
    ]
    
    var profilePostDara: [ProfileData] = [
        ProfileData(image: "thumb1", type: .multiple),
        ProfileData(image: "thumb2", type: .video),
        ProfileData(image: "thumb3", type: .multiple),
        ProfileData(image: "thumb4", type: .video),
        ProfileData(image: "thumb5", type: .multiple),
        ProfileData(image: "thumb6", type: .video),
        ProfileData(image: "thumb7", type: .multiple),
        ProfileData(image: "thumb8", type: .video),
        ProfileData(image: "thumb9", type: .multiple),
    ]
    
}
