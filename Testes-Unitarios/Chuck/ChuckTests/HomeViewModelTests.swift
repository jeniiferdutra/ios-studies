//
//  ViewModelTests.swift
//  ChuckTests
//
//  Created by Jenifer Rocha on 12/08/25.
//

import XCTest
@testable import Chuck

final class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    var mockService: MockHomeService!
    var mockDelegate: MockHomeViewModelDelegate!

    override func setUpWithError() throws {
        mockService = MockHomeService()
        viewModel = HomeViewModel(service: mockService)
        mockDelegate = MockHomeViewModelDelegate()
        viewModel.delegate(delegate: mockDelegate)
    }

    override func tearDownWithError() throws {
        mockService = nil
        viewModel = nil
        mockDelegate = nil
    }

    func testFetchRequestSuccess() {
        
        // Lista simulada que o service vai retornar
        let list: [String] = ["category1", "category2"]
        // Configura o mock para retornar sucesso com essa lista
        mockService.result = .success(list)
        
        // Chama o método da ViewModel que busca os dados
        viewModel.fetchRequest()
        
        // Verifica se a quantidade de linhas é igual ao tamanho da lista
        XCTAssertEqual(viewModel.numberOfRowsInSection, list.count)
        // Verifica se o primeiro item carregado é igual ao primeiro da lista simulada
        XCTAssertEqual(viewModel.loadCurrentCategory(indexPath: IndexPath(row: 0, section: 0)), list[0])
        XCTAssertTrue(mockDelegate.successCaled)

    }
    
    
    //MARK: Caso de Erro
    
    func testFetchRequestFailure() {
        
        mockService.result = .failure(NSError(domain: "com.test.error", code: 0))
        viewModel.fetchRequest()
        
        XCTAssertEqual(viewModel.numberOfRowsInSection, 0)
        XCTAssertTrue(mockDelegate.errorCaled)

    }
}

class MockHomeViewModelDelegate: HomeViewModelProtocol {
    var successCaled = false
    var errorCaled = false
    
    func success() {
        successCaled = true
    }
    
    func error(message: String) {
        errorCaled = true
    }
}

class MockHomeService: HomeServiceProtocol {
    
    // Resultado que o mock vai devolver (padrão: sucesso com lista vazia)
    var result: Result<[String], Error> = .success([])
    
    // Simula a requisição e retorna o resultado configurado
    func getHome(completion: @escaping (Result<[String], any Error>) -> Void) {
        completion(result)
    }
}
