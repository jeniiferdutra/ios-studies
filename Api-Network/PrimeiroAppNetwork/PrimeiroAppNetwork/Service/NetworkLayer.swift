//
//  NetworkLayer.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 22/05/25.
//

import Foundation

protocol NetworkLayer {
    func request<T: Decodable>(with urlString: String, method: HTTPMethod, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>
    ) -> Void)// passar qualquer tipo de objeto
    
}
