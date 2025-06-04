//
//  LoginViewController.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 03/06/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Clousers
    var onRegisterTapped: (() -> Void)?
    var onLoginSuccess: (() -> Void)?
    
    //MARK: Properts
    lazy var loginView: LoginView = {
        let view = LoginView(frame: .zero)
        
        view.onRegisterTapped = {[weak self] in
            self?.onRegisterTapped?()
        }
        
        view.onOpenButtonTapped = {[weak self] email, password in
            self?.onOpenButtonTapped(email, password)
        }
        
        return view
    }()
    
    //MARK: Overrides
    override func loadView() {
        self.view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
    private func onOpenButtonTapped(_ email: String, _ password: String) {
        let manager = UserManager(business: UserBusiness())
        manager.login(email: email, password: password) { [weak self] userModel in
            self?.onLoginSuccess?()
        } failureHandler: { [weak self] error in
            self?.showMessage("Error", error.localizedDescription)
        }
    }
    
    func showMessage(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: . default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
