//
//  RegisterView.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 23/07/25.
//

import UIKit

class RegisterView: UIView {

    //MARK: Clousers
    var onRegisterButtonTapped: ((_ email: String, _ password: String) -> Void)?
    
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
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()

    lazy var passwordConfirmationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confirme sua Senha"
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
    
    lazy var passwordConfirmationTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.layer.cornerRadius = 5
        email.layer.borderWidth = 1
        email.layer.borderColor = UIColor.black.cgColor
        email.backgroundColor = .lightGray
        email.textColor = .gray
        email.setLeftPaddingPoints(15)
        email.placeholder = "Confirme sua senha:"
        email.keyboardType = .default
        return email
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
        addSubview(passwordConfirmationLabel)
        addSubview(passwordConfirmationTextField)
        addSubview(registerButton)
    }
    
    func setVisualConstraints() {
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordConfirmationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
            passwordConfirmationLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordConfirmationLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            
            passwordConfirmationTextField.topAnchor.constraint(equalTo: passwordConfirmationLabel.bottomAnchor, constant: 5),
            passwordConfirmationTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordConfirmationTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordConfirmationTextField.heightAnchor.constraint(equalToConstant: 40),

            registerButton.topAnchor.constraint(equalTo: passwordConfirmationTextField.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    //MARK: - Actions
    
    @objc func registerButtonTapped() {
        if let email = emailTextField.text,
           let password = passwordTextField.text {
            self.onRegisterButtonTapped?(email, password)
        } else {
            
        }
    }
}
