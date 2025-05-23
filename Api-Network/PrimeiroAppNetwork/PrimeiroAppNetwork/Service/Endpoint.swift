//
//  Endpoint.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 22/05/25.
//

import Foundation

struct Endpoint {
    
    let url: String
    let method: HTTPMethod
    let headers: [String: String]?
    let parameters: Parameters?
    
    internal init(url: String, method: HTTPMethod = .get, headers: [String : String]? = nil, parameters: Parameters? = nil) {
        self.url = url
        self.method = method
        self.headers = headers
        self.parameters = parameters
    }
}

enum Parameters {
    case dictionary([String: Any])
    case encodable(Encodable)
}
