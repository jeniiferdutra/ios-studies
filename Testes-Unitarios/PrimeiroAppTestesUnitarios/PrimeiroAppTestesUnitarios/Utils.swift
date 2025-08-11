//
//  Utils.swift
//  PrimeiroAppTestesUnitarios
//
//  Created by Jenifer Rocha on 11/08/25.
//

import Foundation

class Utils {
    
    static func average(numbers: [Int]) -> Int {
        return numbers.reduce( 0, +) / numbers.count
    }
    
    static func isInt(text: String) -> Bool {
        return Int(text) != nil
    }
}
