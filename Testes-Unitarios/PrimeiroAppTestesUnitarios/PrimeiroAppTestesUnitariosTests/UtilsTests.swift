//
//  UtilsTests.swift
//  PrimeiroAppTestesUnitariosTests
//
//  Created by Jenifer Rocha on 11/08/25.
//

import XCTest
@testable import PrimeiroAppTestesUnitarios // primeira coisa a se fazer é importar

final class UtilsTests: XCTestCase {

    func testAverage() {
        let numbers  = [1, 2, 3, 4, 5]
        let expected = 3
        let result = Utils.average(numbers: numbers)
        XCTAssertEqual(result, expected)

    }
    
    // Funcao para verificar se uma string é um número inteiro
    
    func testIsInt() {
        let testTrue = "100000"
        let resultTrue = Utils.isInt(text: testTrue)
        let testFalse = "100test"
        let resultFalse = Utils.isInt(text: testFalse)
        
        XCTAssertTrue(resultTrue, "O resultTrue nao pode ser false, pois ele deve conseguir converter a String \(testTrue) em um INT!")
        XCTAssertFalse(resultFalse,  "O resultFalse nao pode ser true, pois ele nao deve conseguir converter a String \(testFalse) em um INT!")
        
    }
}
