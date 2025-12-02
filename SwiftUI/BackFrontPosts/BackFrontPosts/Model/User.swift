//
//  User.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 11/11/25.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    let userName: String
    let userImage: String
}
