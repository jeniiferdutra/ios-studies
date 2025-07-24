//
//  RegisterViewController.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 03/06/25.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var onRegisterSuccess: (() -> Void)?
    lazy var registerView: RegisterView =  {
        let view = RegisterView(frame: .zero)
        
        view.onRegisterButtonTapped = {[weak self] email, password in
            self?.registerButtonTapped(email, password)
            
        }
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = registerView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registro"
    }
    
    private func registerButtonTapped(_ email: String, _ password: String) {
        let userViewModel = UserViewModel()
        userViewModel.setFromUserApi(email, password) { [weak self] result in
            switch result {
            case .success(let success):
                self?.onRegisterSuccess?()
            case .failure(let error):
                self?.showMessage("Erro", error.localizedDescription)
            }
        }
    }
    
    func showMessage(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: . default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
