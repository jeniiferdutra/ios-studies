//
//  ContentView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        @State var selection = 1
        
        TabView(selection: $selection,
                content: {
            
            HomeView()
                .tabItem {
                    Image(selection == 1 ? "home-selected" : "home")
                }.tag(1)
            
            NotificationView()
                .tabItem {
                    Image("addButton")
                }.tag(2)
            
            ProfileView()
                .tabItem {
                    Image(selection == 3 ? "user-selected" : "user")
                }.tag(3)
        })
    }
}

#Preview {
    MainView()
}
