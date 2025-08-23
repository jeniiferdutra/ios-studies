//
//  ChangeValue.swift
//  PropertyWrappers
//
//  Created by Jenifer Rocha on 22/08/25.
//

import SwiftUI

struct ChangeValue: View {
    
    @State private var value: CGFloat = 50
    
    var body: some View {
        VStack {
            SetValue(value: $value)
                .padding()
                .background(Color.red)
            Slider(value: $value, in: 0...100, step: 1)
                .padding()
        }
    }
}

struct SetValue: View {
    
    @Binding var value: CGFloat
    
    var body: some View {
        VStack(spacing: 15) {
            Text("\(value)")
            Button("CLIQUE AQUI") {
                value = 10
            }
        }
    }
}

#Preview {
    ChangeValue()
}
