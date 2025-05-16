//
//  WalletViewModel.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 15/05/25.
//

import UIKit

class WalletViewModel {
    
    private let service: WalletService = WalletService()
    
    public func fetch(_ type: TypeFatch) {
        switch type {
        case .mock:
            service.getWalletFromJson { result, failure in
                if let result {
                    print(result)
                } else {
                    print(result)
                }
            }
        case .request:
            service.getWallet { result, failure in
                if let result {
                    print(result)
                } else {
                    print(result)
                }
            }
        }
    }

}
