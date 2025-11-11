//
//  Activity.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 11/11/25.
//

import Foundation

enum ActivatyType {
    case liked
    case newFollower
    case suggestFollower
    case comment
}

struct Activity: Identifiable {
    var id = UUID()
    var activity: ActivatyType
    var duration: String
    var usersInContext: [User]
    var postImage: String?
    var comment: String?
    
    func getUsernames() -> String {
        return usersInContext.map{$0.userName}.joined(separator: ", ")
    }
}
