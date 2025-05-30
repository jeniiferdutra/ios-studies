//
//  LoginVC.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 29/05/25.
//

import UIKit

class LoginVC: UIViewController {
    
    let presenter: LoginPresenter = LoginPresenter()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
    }
    
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            let userModel = UserModel(email: email, password: password)
            
            presenter.login(userModel: userModel)
        }
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
    }
}

extension LoginVC: LoginPresenterDelegate {
    func goHome() {
        let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true)
    }
    
    func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}

