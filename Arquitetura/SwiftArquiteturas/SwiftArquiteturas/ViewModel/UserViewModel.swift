//
//  UserViewModel.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 23/07/25.
//

import UIKit

class UserViewModel {
    
    private let model: UserModel
    
    init(model: UserModel) {
        self.model = model
    }
    
    init() {
        self.model = UserModel()
    }
    
    var email: String {
        model.email
    }
    
    func getFromUserApi(_ email: String, _  password: String, completion: @escaping (Result<UserViewModel, Error>) -> Void) {
        let manager = UserManager(business: UserBusiness())
        manager.login(email: email, password: password) { userModel in
            completion(.success(UserViewModel(model: userModel)))
        } failureHandler: { error in
            completion(.failure(error))
        }
    }
    
    func setFromUserApi(_ email: String, _  password: String, completion: @escaping (Result<UserViewModel, Error>) -> Void) {
        let manager = UserManager(business: UserBusiness())
        manager.register(email: email, password: password) { userModel in
            completion(.success(UserViewModel(model: userModel)))
        } failureHandler: { error in
            completion(.failure(error))
        }
    }
}
