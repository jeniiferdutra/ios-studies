//
//  PersonList.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import Foundation
import UIKit

struct PersonList: Codable {
    var person: [Person]
    
}

struct Person: Codable {
    var name: String
    var lastName: String
    var phone: String
    
    enum CodingKeys: String, CodingKey {
        case name = "nome"
        case lastName = "sobrenome"
        case phone = "telefone"
    }
}
