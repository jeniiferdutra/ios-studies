//
//  HomeService.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import UIKit

class HomeService {
    
    func getPersonList() {
        let urlString: String = "https://run.mocky.io/v3/78cc1974-0b38-4f8e-9726-4bc3cb544bc0"
        
        guard let url: URL = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error { // tirando a opcionalidade do erro
                print("ERROR \(#function) Detalhe do erro: \(error.localizedDescription)")
                return
            }
            
            guard let data else {
                
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                
                return
            }
            
//            do {
//                let person: Person try 
//            } catch <#pattern#> {
//                <#statements#>
//            }
        }
        task.resume()
    }
    
}
