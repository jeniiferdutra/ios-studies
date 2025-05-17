//
//  GerenericService.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 01/05/25.
//

import Foundation
import Alamofire

enum Error: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
    case errorRequest(AFError) // o que o alamofire retorna de erro
    
}

enum TypeFatch {
    case mock
    case request
}

protocol GenericService: AnyObject {
    //typealias serve para facilitar a escrita e leitura de closures (funções anônimas)
    //'result' do tipo genérico T (pode ser qualquer tipo, como String, Int, ou até um objeto personalizado)
    // 'failure' do tipo opcional 'Error' (pode ser um erro ou nil)
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}
