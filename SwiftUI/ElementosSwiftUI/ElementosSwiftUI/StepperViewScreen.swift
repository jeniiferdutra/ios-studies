//
//  StepperViewScreen.swift
//  ElementosSwiftUI
//
//  Created by Jenifer Rocha on 25/08/25.
//

import SwiftUI

struct StepperViewScreen: View {
    
    @State var contador: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Contador", value: $contador,
                    in: 0...10,
                    step: 2
            )
            .labelsHidden()
            Text("Valor stepper: \(contador)")
        }
        .padding()
    }
}

#Preview {
    StepperViewScreen()
}
