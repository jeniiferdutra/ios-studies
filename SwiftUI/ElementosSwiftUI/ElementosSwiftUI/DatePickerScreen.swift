//
//  DatePickerScreen.swift
//  ElementosSwiftUI
//
//  Created by Jenifer Rocha on 25/08/25.
//

import SwiftUI

struct DatePickerScreen: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        VStack(spacing: 30.0) {
            DatePicker("Escolha uma data",
                selection: $selectedDate,in:
                ...Date(),
                displayedComponents: [.date])
            
            Text("A data é: \(formattedDate)")
            
            DatePicker("Escolha uma data",
                selection: $selectedDate,
                displayedComponents: [.date])
            .datePickerStyle(.wheel)
            .labelsHidden()
        }
        .padding()
    }
    
    // Formatador de data
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: selectedDate)
    }
}

#Preview {
    DatePickerScreen()
}
