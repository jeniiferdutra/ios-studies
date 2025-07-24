//
//  LoginView.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 03/06/25.
//

import UIKit

class LoginView: UIView {
    
    //MARK: Clousers
    var onRegisterTapped: (() -> Void)?
    var onOpenButtonTapped: ((_ email: String, _ password: String) -> Void)?
    
    //MARK: - Properts
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.layer.cornerRadius = 5
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor.black.cgColor
        email.backgroundColor = .lightGray
        email.textColor = .gray
        email.setLeftPaddingPoints(15)
        email.placeholder = "Digite seu email:"
        email.keyboardType = .emailAddress
        return email
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.layer.cornerRadius = 5
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor.black.cgColor
        email.backgroundColor = .lightGray
        email.textColor = .gray
        email.setLeftPaddingPoints(15)
        email.placeholder = "Digite sua senha:"
        email.keyboardType = .default
        return email
    }()
    
    lazy var openButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Entrar", for: .normal)
        btn.backgroundColor = .systemYellow
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(openButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var registerButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Registrar", for: .normal)
        btn.backgroundColor = .systemYellow
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .brown
        addViews()
        setVisualConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Set Visual Constraints
    func addViews() {
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(openButton)
        addSubview(registerButton)
    }
    
    func setVisualConstraints() {
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordLabel.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            openButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            openButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            openButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            openButton.heightAnchor.constraint(equalToConstant: 40),
            
            registerButton.topAnchor.constraint(equalTo: openButton.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    //MARK: - Actions
    
    @objc func registerButtonTapped() {
        self.onRegisterTapped?()
    }
    
    @objc func openButtonTapped() {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            self.onOpenButtonTapped?(email, password)
        } else {
            
        }
    }
}
