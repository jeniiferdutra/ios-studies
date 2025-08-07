//
//  PrimeiroAppTestesUnitariosTests.swift
//  PrimeiroAppTestesUnitariosTests
//
//  Created by Jenifer Rocha on 05/08/25.
//

import XCTest // biblioteca para fazer os testes
@testable import PrimeiroAppTestesUnitarios // @testable -> acessar o projeto PrimeiroAppTestesUnitarios na camada superior

final class PrimeiroAppTestesUnitariosTests: XCTestCase {
    
    var vc: ViewController!

    override func setUpWithError() throws {
        vc = ViewController()
        print("1")
    }

    override func tearDownWithError() throws {
        vc = nil
    }
    
    func testPrimeiraFuncao() {
        print("2")
        var valorTotal = 10 + 10
        XCTAssertEqual(20, valorTotal)
    }

}
