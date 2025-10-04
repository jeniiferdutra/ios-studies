//
//   Note.swift
//  Notas
//
//  Created by Jenifer Rocha on 03/10/25.
//

import Foundation

struct Note: Identifiable {
    var id: UUID = UUID()
    
    var title: String = ""
    var content: String = ""
}
