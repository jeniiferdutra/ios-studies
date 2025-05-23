//
//  NetworkLayer.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 22/05/25.
//

import Foundation

protocol NetworkLayer {
    func request<T>(with endpoint: Endpoint, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable
}
