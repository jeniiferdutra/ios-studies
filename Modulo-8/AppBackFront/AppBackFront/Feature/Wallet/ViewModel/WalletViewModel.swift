//
//  WalletViewModel.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 15/05/25.
//

import UIKit

protocol WalletViewModelDelegate: AnyObject { // criar o protocol para caso de sucess configurar a tableview, error  pedir p/ fazer alguma acao
    func success()
    func error()
}

class WalletViewModel {
    
    private let service: WalletService = WalletService()
    private weak var delegate: WalletViewModelDelegate?
    private var walletData: WalletData?
    
    public func delegate(delegate: WalletViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetch(_ type: TypeFatch) {
        switch type {
        case .mock:
            service.getWalletFromJson { result, failure in
                if let result {
                    self.walletData = result
                    self.delegate?.success()
                } else {
                    self.delegate?.error()
                }
            }
        case .request:
            service.getWallet { result, failure in
                if let result {
                    self.walletData = result
                    self.delegate?.success()
                } else {
                    self.delegate?.error()
                }
            }
        }
    }
    
    public var numberOfRowsInSection: Int {
        return 1
    }
    
    public func loadCurrentQuotationEthereum(indexPath: IndexPath) -> QuotationEthereum {
        return walletData?.quotationEthereum ?? QuotationEthereum()
    }

    public func heightForRowAt(indexPath: IndexPath) -> CGFloat {
        switch WalletNameCell(rawValue: indexPath.row) {
        case .quotationEth:
            return 250
        default:
            return 0
        }
    }
}
