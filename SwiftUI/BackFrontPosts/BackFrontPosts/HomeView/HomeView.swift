//
//  HomeView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 13/10/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 237/255, green: 237/255, blue: 237/255)
                HStack(spacing: 20.0) {
                    ScrollView(.vertical) {
                        LazyVStack {
                            ForEach(viewModel.storyList) { story in
                                StoryView(story: story)
                            }
                        }
                    }
                    .background(Color.white)
                    .frame(width: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    ScrollView(.vertical) {
                        LazyVStack {
                            ForEach($viewModel.postList) { post in
                                PostView(post: post, isMuted: $viewModel.isMuted)
                            }
                        }
                    }

                }
                .padding()
            }
            .toolbarTitleDisplayMode(.inline)
            .toolbar(content : {
                ToolbarItem(placement: .topBarLeading) {
                    Image("bf_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 100)
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button(action: {
                            print("go search")
                        }, label: {
                            Image("search")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 25, height: 25)
                        })
                        
                        Button(action: {
                            print("go search")
                        }, label: {
                            ZStack {
                                Image("message")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                                
                                Text("3")
                                    .font(.system(size: 13, weight: .bold))
                                    .frame(width: 18, height: 18)
                                    .background(Color.red)
                                    .foregroundStyle(.white)
                                    .clipShape(Circle())
                                    .offset(x: 9, y: -9)
                            }
                        })
                    }
                    
                }
            })
        }
    }
}

#Preview {
    HomeView()
}
