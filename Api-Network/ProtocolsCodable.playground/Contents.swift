import Foundation
import UIKit

struct Person: Codable {
    var name: String?
    var age: Int?
    var lastName: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name_App"
        case age = "age_App"
        case lastName = "last_Name"
    }
}

// Decodificando Json em Objeto

let jsonString = """
{
    "name_App": "Jenifer",
    "age_App": 25,
    "last_Name": "Dutra"
}
"""

let jsonDecoder = JSONDecoder()

if let jsonData = jsonString.data(using: .utf8) {
    do {
        let person: Person = try jsonDecoder.decode(Person.self, from: jsonData)
        print("Decodificado")
        print("Nome: \(person.name ?? ""), idade: \(person.age ?? 0), Sobrenome: \(person.lastName ?? "")")
    } catch {
        print("Erro ao decodificar JSON: \(error)")
    }
}


// Codificando um Objeto em JSON

let person: Person = Person(name: "Lana", age: 35, lastName: "Del Rey")

let jsonEncoder = JSONEncoder()
jsonEncoder.outputFormatting = .prettyPrinted

do {
    let jsonData = try jsonEncoder.encode(person)
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print("JSON decodificado:")
        print(jsonString)
    }
} catch {
    print("Erro ao codificar em JSON \(error)")
}
