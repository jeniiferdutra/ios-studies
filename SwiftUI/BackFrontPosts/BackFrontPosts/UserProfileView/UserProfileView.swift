//
//  UserProfileView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 20/11/25.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Image("logo-BF")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundStyle(Color.blue)
                        .background(Color.white
                            .clipShape(Circle()))
                        .overlay {
                            Circle().stroke(.white, lineWidth: 3)
                        }
                        .offset(x: 35, y: 30)
                }
                
                Spacer()
                
                HStack(spacing: 20) {
                    VStack {
                        Text("235")
                            .font(Font.system(size: 17, weight: .medium))
                        Text("Postagens")
                            .font(.footnote)
                    }
                    
                    VStack {
                        Text("2.8K")
                            .font(Font.system(size: 17, weight: .medium))
                        Text("Seguidores")
                            .font(.footnote)
                    }
                    
                    VStack {
                        Text("3.1K")
                            .font(Font.system(size: 17, weight: .medium))
                        Text("Seguindo")
                            .font(.footnote)
                    }
                    
                }
                Spacer()
            }
            
            Text("Backfront Academy")
                .font(Font.system(size: 13, weight: .medium))
                .padding(.top, 5)
            
            Text("Seja o profissional mais procurado e bem remunerado do mercado de tecnologia.")
                .font(Font.system(size: 13, weight: .regular))
                .padding(.top, 1)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    UserProfileView()
}
