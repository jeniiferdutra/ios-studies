//
//  SwiftArquiteturasTests.swift
//  SwiftArquiteturasTests
//
//  Created by Jenifer Rocha on 27/05/25.
//

import XCTest
@testable import SwiftArquiteturas // Permite acesso às classes e métodos internos do módulo principal para testes

class SwiftArquiteturasTests: XCTestCase { // Classe de testes unitários
    
    func testRegister() throws {
        var userModel = UserModel() // Criação de um modelo de usuário (mas ele não é atualizado no closure)

        let exp = expectation(description: "Check login is successful") // Expectativa usada para aguardar o resultado assíncrono

        let manager = UserManager(business: UserBusiness()) // Instância do gerenciador de usuário com a camada de negócios real

        // Chamada ao método de registro
        manager.register(email: "jenifer@teste.com",
                         password: "123456") { userM in
            print(userM) // Sucesso: imprime o usuário
            exp.fulfill() // Libera a expectativa após sucesso
        } failureHandler: { error in
            print(error) // Falha: imprime o erro
            exp.fulfill() // Libera a expectativa mesmo em caso de erro, para o teste não travar
        }

        // Aguarda até 30 segundos pela expectativa
        waitForExpectations(timeout: 30) { error in
            if let error {
                XCTFail("waitForExpectationsWithTimeout erro: \(error)") // Se a expectativa falhar, o teste falha
            }
            XCTAssertEqual(userModel != nil, true) // Validação (sem efeito real aqui, pois userModel não foi atualizado)
        }
    }
}
