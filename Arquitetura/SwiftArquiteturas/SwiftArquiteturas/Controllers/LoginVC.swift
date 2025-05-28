//
//  LoginVC.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 28/05/25.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openButtontap(_ sender: UIButton) {
        let manager = UserManager(business: UserBusiness())
        
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            manager.login(email: email, password: password) { userModel in
                self.openHomeView()
            } failureHandler: { error in
                self.showMessage(title: "Error", message: error.localizedDescription)
            }
        }
    }
    
    func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func registerButtonTap(_ sender: UIButton) {
    }
    
    func openHomeView() {
        let home = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
        
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true)
    }
}
