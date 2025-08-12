//
//  HomeServiceTests.swift
//  ChuckTests
//
//  Created by Jenifer Rocha on 11/08/25.
//

import XCTest
@testable import Chuck

final class HomeServiceTests: XCTestCase {
    
    var homeService: HomeService!

    override func setUpWithError() throws {
        homeService = HomeService()
    }

    override func tearDownWithError() throws {
        homeService = nil
    }

    func testGetHomeSuccess() {
        // Cria uma expectativa para aguardar a conclusão da chamada assíncrona
        let expectation = self.expectation(description: "fetch categories")
        
        // Chama o service que busca as categorias
        homeService.getHome { result in
            switch result {
            case .success(let success):
                // Verifica se o resultado não é nulo
                XCTAssertNotNil(success, "Success nao pode ser nil!!")
                // Verifica se o array retornado tem pelo menos um elemento
                XCTAssertGreaterThan(success.count, 0, "A categoria deveria ser igual ou maior que zero")
                expectation.fulfill()// Marca a expectativa como cumprida, permitindo que o teste continue

            case .failure:// Falha o teste caso o resultado seja uma falha
                XCTFail("A request nao pode cair no caso de failure") // igual ao FatalError
            }
        }
        // Espera até 10 segundos pela expectativa ser cumprida, para não finalizar o teste antes da resposta
        waitForExpectations(timeout: 10)
    }

}
