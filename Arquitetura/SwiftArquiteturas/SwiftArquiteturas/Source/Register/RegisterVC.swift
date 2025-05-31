//
//  RegisterVC.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 29/05/25.
//

import UIKit

class RegisterVC: UIViewController {
    
    let presenter: RegisterPresenter = RegisterPresenter()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        if let email = emailTextField.text,
           let password = passwordTextField.text,
           password == confirmPasswordTextField.text {
            let userModel = UserModel(email: email, password: password)
            presenter.register(userModel: userModel)
        } else {
            showMessage(title: "Error", message: "Senhas nao conferem")
        }
    }
    
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

extension RegisterVC: RegisterPresenterDelegate {
    func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
    func goHome() {
        let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true)
    }
    
    
}
