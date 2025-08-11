//
//  Utils.swift
//  PrimeiroAppTestesUnitarios
//
//  Created by Jenifer Rocha on 11/08/25.
//

import Foundation

class Utils {
    
    static func avarage(numbers: [Int]) -> Int {
//        var total = 0
//        for number in numbers {
//            total = total + number
//        }
//        total = total / numbers.count
//        return total
        
        return numbers.reduce( 0, +) / numbers.count
    }
}
