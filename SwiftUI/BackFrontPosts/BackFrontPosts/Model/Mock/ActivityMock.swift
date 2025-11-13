//
//  ActivityMock.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 12/11/25.
//

import Foundation

var ActivityMock: [Activity] = [

    Activity(activity: .liked,
             duration: "15m", usersInContext: [User(userName: "Cleiton", userImage: "user5"), User(userName: "Mario", userImage: "user2")],
             postImage: "dogs"),
    Activity(activity: .comment,
             duration: "4h", usersInContext: [User(userName: "Cleiton", userImage: "user1")],
             postImage: "dogs",
             comment: "Muito lindos!!"),
    Activity(activity: .newFollower,
             duration: "1h 15m", usersInContext: [User(userName: "Cleiton", userImage: "user2"), User(userName: "Mario", userImage: "user2"),  User(userName: "Mario", userImage: "user2")]),
    Activity(activity: .liked,
             duration: "1h 25m", usersInContext: [User(userName: "Cleiton", userImage: "user3"), User(userName: "Mario", userImage: "user2")],
             postImage: "dogs"),
    Activity(activity: .liked,
             duration: "2h 15m", usersInContext: [User(userName: "Gilberto", userImage: "user4"), User(userName: "Mario", userImage: "user2")],
             postImage: "dogs"),
    Activity(activity: .suggestFollower,
             duration: "3h", usersInContext: [User(userName: "Cleiton", userImage: "user1"), User(userName: "Mario", userImage: "user2")],
             postImage: "dogs"),
    Activity(activity: .liked,
             duration: "15m", usersInContext: [User(userName: "Mario", userImage: "user2"), User(userName: "Mario", userImage: "user2")],
             postImage: "dogs"),
    Activity(activity: .liked,
             duration: "15m", usersInContext: [User( userName: "Paulo", userImage: "user3"), User(userName: "userImage: Mario", userImage: "user2")],
             postImage: "dogs"),
]
