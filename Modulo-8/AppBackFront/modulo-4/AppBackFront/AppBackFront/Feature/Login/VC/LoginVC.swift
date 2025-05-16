//
//  ViewController.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 24/03/25.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
    
    var screen: LoginScreen?
    var auth: Auth?
    var alert: AlertController?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
        alert = AlertController(controller: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyBoard()
        auth = Auth.auth()
        screen?.delegate(delegate: self)
        screen?.configTextFieldsDelegate(delegate: self)
        isEnableButton(false)
    }
    
    func validateTextFields() {
        if (screen?.emailTextField.text ?? "").isValid(validType: .email) && (screen?.passwordTextField.text ?? "").isValid(validType: .password) {
            isEnableButton(true)
        } else {
            isEnableButton(false)
        }
    }
    
    func isEnableButton(_ isEnable: Bool) {
        if isEnable {
            screen?.loginButton.setTitleColor(.white, for: .normal)
            screen?.loginButton.isEnabled = true
            screen?.subImageView.alpha = 1
        } else {
            screen?.loginButton.setTitleColor(.lightGray, for: .normal)
            screen?.loginButton.isEnabled = false
            screen?.subLoginImageView.alpha = 0.4
        }
    }
    
}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        auth?.signIn(withEmail: screen?.emailTextField.text ?? "", password: screen?.passwordTextField.text ?? "", completion: { user, error in
            if error != nil {
                // deu erro
                print(error?.localizedDescription ?? "")
                self.alert?.getAlert(title: "Falha no Login!", message: error?.localizedDescription ?? "")
            } else {
                // sucesso
                print("sucesso!")
            }
        })
    }
    
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField.text?.isEmpty ?? false {
            textField.layer.borderWidth = 1.5
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            switch textField {
            case self.screen?.emailTextField:
                if (screen?.emailTextField.text ?? "").isValid(validType: .email) {
                    screen?.emailTextField.layer.borderWidth = 1
                    screen?.emailTextField.layer.borderColor = UIColor.white.cgColor
                } else {
                    screen?.emailTextField.layer.borderWidth = 1.5
                    screen?.emailTextField.layer.borderColor = UIColor.red.cgColor
                }
            case self.screen?.passwordTextField:
                if (screen?.passwordTextField.text ?? "").isValid(validType: .password) {
                    screen?.passwordTextField.layer.borderWidth = 1
                    screen?.passwordTextField.layer.borderColor = UIColor.white.cgColor
                } else {
                    screen?.passwordTextField.layer.borderWidth = 1.5
                    screen?.passwordTextField.layer.borderColor = UIColor.red.cgColor
                }
            default:
                break
            }
        }
        validateTextFields()
    }
     
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
