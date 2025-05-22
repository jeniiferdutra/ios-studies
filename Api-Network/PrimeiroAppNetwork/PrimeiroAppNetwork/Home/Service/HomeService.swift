//
//  HomeService.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import UIKit

class HomeService {
    
    func getPersonList(completion: @escaping (Result<[Person], NetworkError>) -> Void) {
        let urlString: String = "78cc1974-0b38-4f8e-9726-4bc3cb544bc0"
        
        var endpoint = Endpoint(url: urlString, method: .get, headers: nil, parameters: nil)
        ServiceManeger.shared.request2(with: endpoint, decodeType: PersonList.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.person))
            case .failure(let failure):
                completion(.failure(failure))
            }
            
        }
        
    }
}
