//
//  HomeViewModel.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import UIKit

protocol HomeViewModelProtocol: AnyObject {
    func success()
    func error(message: String)
}

class HomeViewModel {
    
    private var service: HomeService = HomeService()
    private var personList: [Person] = []
    private weak var delegate: HomeViewModelProtocol?
    
    public func delegate(delegate: HomeViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public func fetchRequest() {
        service.getPersonList { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                personList = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
    
    public var numberOfRowsInSection: Int {
        return personList.count
    }
    
    public func loadCurrentPerson(indexPath: IndexPath) -> Person{
        return personList[indexPath.row]
    }
}
