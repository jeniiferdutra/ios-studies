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
    
    // Funcao para gerar um número aleatório de 0 a um valor especifico
    
    func testRandom() {
        let upperBound = 1000
        let result = Utils.random(upperBound: upperBound)
        XCTAssertTrue(result >= 0 && result <= upperBound, "O número sorteado nao pode ser menor que zero ou maior que o \(upperBound)")
    }
    
    // Funcao para remover os espacos em branco no inicio e no final de uma string
    
    func testSpace() {
        let space = " Jenifer    Dutra"
        let result = Utils.space(space: space)
        let expected = "JeniferDutra"
        XCTAssertEqual(result, expected, "O texto nao deve conter espacos no inicio e no meio da String")
    }
}
