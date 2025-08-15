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
        
        // Configura o mockService para simular uma falha na requisição
        mockService.result = .failure(NSError(domain: "com.test.error", code: 0))
        viewModel.fetchRequest()
        
        // Verifica se o número de itens retornados é 0 após o erro
        XCTAssertEqual(viewModel.numberOfRowsInSection, 0)
        // Verifica se o método de erro do delegate foi chamado
        XCTAssertTrue(mockDelegate.errorCaled)

    }
}

// Classe mock para simular o comportamento do delegate da ViewModel
class MockHomeViewModelDelegate: HomeViewModelProtocol {
    
    // Flags para verificar se os métodos foram chamados
    var successCaled = false
    var errorCaled = false
    
    // Simula a ação quando há sucesso
    func success() {
        successCaled = true
    }
    
    // Simula a ação quando há erro
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
