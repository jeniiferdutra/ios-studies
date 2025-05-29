//
//  RegisterVC.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 28/05/25.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBAction func registerButtonTap(_ sender: UIButton) {
        if let email = emailTextField.text,
           let password = passwordTextField.text,
           let confirmPassword = confirmPasswordTextField.text {
            
            if password != confirmPassword {
                self.showMessage(title: "Erro", message: "As senhas nao conferem")
                return
            }
            
            let manager = UserManager(business: UserBusiness())
            manager.register(email: email, password: password) { userModel in
                self.openHomeView()
            } failureHandler: { error in
                self.showMessage(title: "Erro", message: error.localizedDescription)
            }

        }
        
    }
    
    @IBAction func backButtonTap(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    func openHomeView() {
        let home = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
        
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true)
    }
    
    func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
