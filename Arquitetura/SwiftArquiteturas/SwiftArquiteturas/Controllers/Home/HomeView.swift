//
//  HomeView.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 23/07/25.
//

import UIKit

class HomeView: UIView {
    
    lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem vindo a Home, voce conseguiu!!"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setVisualConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func addViews() {
        addSubview(helloLabel)
    }
    
    func setVisualConstraints() {
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
