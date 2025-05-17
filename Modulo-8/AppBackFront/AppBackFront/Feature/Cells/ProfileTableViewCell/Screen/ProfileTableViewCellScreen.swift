//
//  ProfileTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 17/05/25.
//

import UIKit

class ProfileTableViewCellScreen: UIView {
    
    lazy var userImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "user01")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var editImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(systemName: "pencil")
        img.contentMode = .scaleAspectFill
        img.tintColor = .white
        return img
    }()
    
    lazy var closeButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 8
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        btn.setTitleColor(UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1), for: .normal)
        btn.layer.borderWidth = 1.7
        btn.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1).cgColor
        btn.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedCloseButton() {
        print(#function)
    }
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Guilherme Zakalski"
        return label
    }()
    
    lazy var profileAtLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 255/255, green: 152/255, blue: 255/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "@userProfile"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(userImageView)
        addSubview(editImageView)
        addSubview(closeButton)
        addSubview(nameLabel)
        addSubview(profileAtLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            userImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            userImageView.heightAnchor.constraint(equalToConstant: 130),
            userImageView.widthAnchor.constraint(equalToConstant: 130),
            
            editImageView.bottomAnchor.constraint(equalTo: userImageView.bottomAnchor),
            editImageView.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: -25),
            editImageView.heightAnchor.constraint(equalToConstant: 25),
            editImageView.widthAnchor.constraint(equalToConstant: 25),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            profileAtLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            profileAtLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
            closeButton.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 60),
            closeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            closeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
