//
//  ProgressViewScreen.swift
//  ElementosSwiftUI
//
//  Created by Jenifer Rocha on 26/08/25.
//

import SwiftUI

struct ProgressViewScreen: View {
    
    @State var progress: Double = 5
    
    var body: some View {
        VStack(spacing: 10.0) {
            Button("Avançar") {
                progress += 0.5
            }
            
            ProgressView(
                value: progress,
                total: 10)
                .padding()
            
            Button("Diminuir") {
                progress -= 0.5
            }
        }
        .padding()
    }
}

#Preview {
    ProgressViewScreen()
}
