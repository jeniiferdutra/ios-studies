//
//  UtilsTests.swift
//  PrimeiroAppTestesUnitariosTests
//
//  Created by Jenifer Rocha on 11/08/25.
//

import XCTest
@testable import PrimeiroAppTestesUnitarios // primeira coisa a se fazer é importar

final class UtilsTests: XCTestCase {

    func testAvarage() {
        let numbers  = [1, 2, 3, 4, 5]
        let expected = 3
        let result = Utils.avarage(numbers: numbers)
        XCTAssertEqual(result, expected)

    }
}
