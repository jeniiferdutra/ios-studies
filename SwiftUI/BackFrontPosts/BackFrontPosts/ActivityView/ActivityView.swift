//
//  ActivityView.swift
//  BackFrontPosts
//
//  Created by Jenifer Rocha on 12/11/25.
//

import SwiftUI

struct ActivityView: View {
    
    let activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.usersInContext.first?.userImage ?? "")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
            
            if activity.activity != .comment {
                Text(activity.getUsernames())
                    .font(Font.system(size: 12, weight: .semibold))
                + Text(getDescription())
                    .font(Font.system(size: 12, weight: .regular))
            } else {
                
            }
        }
    }
    
    func getDescription() -> String {
        switch activity.activity {
        case .liked:
            return " teste"
        case .newFollower:
            return ""
        case .suggestFollower:
            return ""
        case .comment:
            return ""
        }
    }
    
    
}

#Preview {
    ActivityView(activity: ActivityMock[0])
}
