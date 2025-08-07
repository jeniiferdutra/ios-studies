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
        print("1") // comeca aqui, depois do testPrimeiraFuncao() passa por aqui de novo
    }

    override func tearDownWithError() throws {
        //Ele serve para limpar o que você preparou no setUpWithError() — tipo "desligar a luz e arrumar a bagunça" depois do teste.
        vc = nil
        print("3") // encerra aqui, qnd terminar o testSegundaFuncao(), vai encerrar aqui de novo
        
    }
    
    func testPrimeiraFuncao() {
        print("2") // inicia o primeiro teste
        //validacao
    }

    func testSegundaFuncao() {
        print("2") //
    }
}
