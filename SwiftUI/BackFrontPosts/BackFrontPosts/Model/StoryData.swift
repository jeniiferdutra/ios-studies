//
//  StoryData.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 15/10/25.
//

import Foundation

struct StoryData: Identifiable {
    var id = UUID()
    
    var image: String
    var name: String
    var myStory: Bool
}
