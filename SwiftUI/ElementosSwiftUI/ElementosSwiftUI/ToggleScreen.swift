//
//  ContentView.swift
//  ElementosSwiftUI
//
//  Created by Jenifer Rocha on 25/08/25.
//

import SwiftUI

struct ToggleScreen: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        ZStack {
            Color(isOn ? .orange : .red)
                .ignoresSafeArea(.all)
            VStack {
                Toggle(isOn: $isOn) {
                    Text("test")
                }
                .toggleStyle(.automatic)
                .labelsHidden()
            }
            .padding()
        }
    }
}

#Preview {
    ToggleScreen()
}
