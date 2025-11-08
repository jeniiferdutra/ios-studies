//
//  HomeViewModel.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 27/10/25.
//

class HomeViewModel {
    
    var isMuted: Bool = true
    
    var postList: [PostData] = [
        PostData(profileImage: "user1", userName: "BackFront", postImage: "backfront", isLiked: false, isSaved: true, caption: "Você acredita?", isVideo: false, videoURL: nil),
        PostData(profileImage: "user3", userName: "Roberto", postImage: "dogs", isLiked: false, isSaved: false, caption: "Em meio a patas e sorrisos, cada latido é uma história de alegria contada sem palavras🐾 ♥️", isVideo: false),
        
        PostData(profileImage: "user2", userName: "Mario",postImage: "tesla", isLiked: false, isSaved: false, caption: "O mesmo chegando depois de concorrentes como a Rivian R1T e a Ford-150 Lightning, os problemas da Cybertruck não se limitam aos anos de atraso. Mais de 2 milhões de pessoas fizeram reservas de US$ 100 e estão pedindo seu dinheiro de volta para a Tesla", isVideo: false, videoURL: nil),
        
        PostData(profileImage: "user5", userName: "Cleiton", postImage: "sonhos", isLiked: false, isSaved: false, caption: "Disseram que era impossível encontrar alguem que amasse mais a vista do que eu, mas claramente não viram a cara dela olhando para o cardápio de sobremesas! 🍰 😍", isVideo: false, videoURL:nil),
        
        PostData(profileImage: "user4", userName: "Mario", postImage: "sonhos", isLiked: false, isSaved: false, caption: "Querem saber porque meus filhos se dão tão bem em matematica? Porque eles sabem somar carros, subtrair o trânsito, dividir as pistas e multiplicar a ação! E no finalm sempre acabam encontrando a raiz quadrada perfeita ... a família!🚗", isVideo: false, videoURL: nil),
    ]
    
    var storyList: [StoryData] = [ // ela esta publica para o app todo poder usar
        StoryData(image: "user1", name: "Seu story", myStory: true),
        StoryData(image: "user5", name: "Cleiton", myStory: true),
        StoryData(image: "user2", name: "Mario", myStory: true),
        StoryData(image: "user3", name: "Roberto", myStory: true),
        StoryData(image: "user4", name: "Julio", myStory: true)
    ]

}
