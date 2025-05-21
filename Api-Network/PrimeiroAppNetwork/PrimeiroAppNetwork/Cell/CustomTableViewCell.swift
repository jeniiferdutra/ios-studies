//
//  CustomTableViewCell.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 21/05/25.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier: String = "CustomTableViewCell"
    
    lazy var screen: CustomTableViewCellScreen = {
        let view = CustomTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addViews()
        configConstrains()
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstrains() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: contentView.topAnchor),
            screen.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    public func setupHomeCell(data: Person) {
        screen.nameLabel.text = "Nome: \(data.name)"
        screen.lastNameLabel.text = "Sobrenome: \(data.lastName)"
        screen.phoneLabel.text = "Telefone: \(data.phone)"
    }
}
