//
//  ProfileData.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 19/11/25.
//

import Foundation

enum PostType: String {
    case video
    case multiple
}

struct ProfileData: Identifiable {
    let id = UUID()
    let image: String
    let type: PostType
}
