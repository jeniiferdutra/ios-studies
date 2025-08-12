//
//  HomeServiceTests.swift
//  ChuckTests
//
//  Created by Jenifer Rocha on 11/08/25.
//

import XCTest
import OHHTTPStubs // casos de erros
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
        // Cria uma expectativa, serve para o teste aguardar a conclusão de uma operação assíncrona.
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
    
    
    //MARK: Caso de Error
    
    func testGetHomeFailure() {
        let expectation = self.expectation(description: "fetch categories failure")
        
        // Simula (stub) uma requisição interceptando chamadas para a URL específica
        HTTPStubs.stubRequests { request in
            request.url?.absoluteString.contains("https://api.chucknorris.io/jokes/categories") ?? false
        } withStubResponse: { _ in
            // Retorna um erro 404 simulado, como se a API tivesse falhado
            return HTTPStubsResponse(error: NSError(domain: "com.test.error", code: 404))
        }
        
        // Chama o método real do service
        homeService.getHome { result in
            switch result {
            case .success:
                // Caso entre aqui, o teste falha (não deveria ter sucesso)
                XCTFail("A request nao pode cair no caso de success")
            case .failure(let error):
                // Garante que realmente houve um erro retornado
                XCTAssertNotNil(error)
                expectation.fulfill()
            }
            
        }
        waitForExpectations(timeout: 10)
        HTTPStubs.removeAllStubs() // Remove todos os stubs para liberar memória e evitar interferir em outros testes
    }
    
}
