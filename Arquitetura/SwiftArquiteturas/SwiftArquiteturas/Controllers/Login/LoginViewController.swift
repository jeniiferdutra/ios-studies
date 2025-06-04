//
//  LoginViewController.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 03/06/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Properts
    lazy var loginView: LoginView = {
        let view = LoginView(frame: .zero)
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
}
