//
//  ContentView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct MainView: View {
    
    @State var selection = 1

    
    var body: some View {
                
        TabView(selection: $selection,
                content: {
            
            HomeView()
                .tabItem {
                    Image(selection == 1 ? "home-selected" : "home")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 15)
                }.tag(1)
            
            NotificationView()
                .tabItem {
                    Image("addButton")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 15)
                }.tag(2)
            
            ProfileView()
                .tabItem {
                    Image(selection == 3 ? "user-selected" : "user")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 15)
                }.tag(3)
        })
    }
}

#Preview {
    MainView()
}
