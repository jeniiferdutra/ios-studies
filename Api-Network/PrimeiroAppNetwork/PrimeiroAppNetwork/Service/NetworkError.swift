//
//  NetworkError.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 22/05/25.
//

import Foundation

enum NetworkError: Error {
    case invalidURL(url: String)
    case noData
    case invalidResponse
    case decodingError(Error)
    case networkFailure(Error)
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .invalidURL(let url):
            return "URL inválida -> \(url)"
        case .noData:
            return "Dados nao recebidos da API."
        case .invalidResponse:
            return "Resposta inválida de API."
        case .decodingError(let error):
            return "Decodificacao falhou: \(error.localizedDescription)"
        case .networkFailure(let error):
            return "Falha na rede: \(error.localizedDescription)"
        }
    }
}
