//
//  HomeService.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import UIKit

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

class HomeService {
    
    //    func getPersonList(completion: @escaping (Result<PersonList, NetworkError>) -> Void) {
    //        let urlString: String = "https://run.mocky.io/v3/78cc1974-0b38-4f8e-9726-4bc3cb544bc0"
    //
    //        guard let url: URL = URL(string: urlString) else {
    //            completion(.failure(.invalidURL(url: urlString)))
    //            return
    //        }
    //
    //        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    //            DispatchQueue.main.async {
    //                if let error { // tirando a opcionalidade do erro
    //                    print("ERROR \(#function) Detalhe do erro: \(error.localizedDescription)")
    //                    completion(.failure(.networkFailure(error)))
    //                    return
    //                }
    //
    //                guard let data else {
    //                    completion(.failure(.noData))
    //                    return
    //                }
    //
    //                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
    //                    completion(.failure(.invalidResponse))
    //                    return
    //                }
    //
    //                do {
    //                    let personList: PersonList = try JSONDecoder().decode(PersonList.self, from: data)
    //                    print("SUCCESS -> \(#function)")
    //                    completion(.success(personList))
    //                } catch {
    //                    print("ERROR -> \(#function)")
    //                    completion(.failure(.decodingError(error)))
    //                }
    //            }
    //        }
    //        task.resume()
    //    }
    
    func getPersonList(completion: @escaping (Result<[Person], NetworkError>) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/78cc1974-0b38-4f8e-9726-4bc3cb544bc0"
        ServiceManeger.shared.request(with: urlString, method: .get, decodeType: PersonList.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.person))
            case .failure(let failure):
                completion(.failure(failure))
            }
            
        }
        
    }
}
