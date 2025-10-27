//
//  HomeViewModel.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 27/10/25.
//

class HomeViewModel {
    
    var storyList: [StoryData] = [ // ela esta publica para o app todo poder usar
        StoryData(image: "user1", name: "Seu story", myStory: true),
        StoryData(image: "user5", name: "Cleiton", myStory: true),
        StoryData(image: "user2", name: "Mario", myStory: true),
        StoryData(image: "user3", name: "Roberto", myStory: true),
        StoryData(image: "user4", name: "Julio", myStory: true)
    ]

}
