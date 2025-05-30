//
//  LoginPresenter.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 29/05/25.
//

import Foundation

protocol LoginPresenterDelegate {
    func showMessage(title: String, message: String)
    func goHome()
}

class LoginPresenter {
    var delegate: LoginPresenterDelegate?
    
    func login(userModel: UserModel) {
        let manager = UserManager(business: UserBusiness())
        manager.login(email: userModel.email, password: userModel.password) {[weak self] model in
            self?.goHome()
        } failureHandler: {[weak self] error in
            self?.delegate?.showMessage(title: "Error", message: error.localizedDescription)
        }
    }
    
    func goHome() {
        self.delegate?.goHome()
        
    }
}
