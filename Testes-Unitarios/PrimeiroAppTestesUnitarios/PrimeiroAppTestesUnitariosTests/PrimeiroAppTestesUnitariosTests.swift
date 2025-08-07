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

    override func setUpWithError() throws { // Faz parte do ciclo de vida dos testes no XCTest. ele é chamado automaticamente antes de cada teste, como uma etapa do ciclo.
        // Imagina que você vai fazer vários testes com uma calculadora. Antes de cada teste, você precisa ligar a calculadora e zerar a memória.
        vc = ViewController()
    }

    override func tearDownWithError() throws {
        //Ele serve para limpar o que você preparou no setUpWithError() — tipo "desligar a luz e arrumar a bagunça" depois do teste.
    }

    func testExample() throws {
        // verifica se uma parte do seu código está funcionando corretamente.
    }
    
    func testPrimeiraFuncao() {
        
    }

    func testPerformanceExample() throws { // Por ora, nao vamos usar
        // É um teste de performance, usado para medir quanto tempo um trecho do código leva para rodar.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
