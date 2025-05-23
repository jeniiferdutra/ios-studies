//
//  CustomTableViewCellScreen.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 21/05/25.
//

import UIKit

class CustomTableViewCellScreen: UIView {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()

    lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(nameLabel)
        addSubview(lastNameLabel)
        addSubview(phoneLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            lastNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            lastNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lastNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            phoneLabel.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: 10),
            phoneLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            phoneLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
