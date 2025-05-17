//
//  ProfileImageTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 17/05/25.
//

import UIKit

class ProfileImageTableViewCellScreen: UIView {
    
    lazy var nftImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "nft5")
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(nftImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            nftImageView.topAnchor.constraint(equalTo: topAnchor),
            nftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
