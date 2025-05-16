//
//  NftImageTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 10/05/25.
//

import UIKit

protocol NftImageTableViewCellScreenDelegate: AnyObject {
    func tappedCloseButton()
    func tappedMagnifyingGlassButton()
}

class NftImageTableViewCellScreen: UIView {
    
    private weak var delegate: NftImageTableViewCellScreenDelegate?
    
    public func delegate(delegate: NftImageTableViewCellScreenDelegate?) {
        self.delegate = delegate
    }

    lazy var nftImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        img.tintColor = .white
        return img
    }()
    
    lazy var closeButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1.0)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 8
        btn.tintColor = .white
        btn.setImage(UIImage(systemName: "xmark"), for: .normal)
        btn.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedCloseButton() {
        delegate?.tappedCloseButton()
    }
    
    lazy var magnifyingGlassButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1.0)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 8
        btn.tintColor = .white
        btn.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        btn.addTarget(self, action: #selector(tappedmagnifyingglassButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedmagnifyingglassButton() {
        delegate?.tappedMagnifyingGlassButton()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(nftImageView)
        addSubview(closeButton)
        addSubview(magnifyingGlassButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            nftImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            nftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            closeButton.topAnchor.constraint(equalTo: nftImageView.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: nftImageView.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35),
            
            magnifyingGlassButton.bottomAnchor.constraint(equalTo: nftImageView.bottomAnchor, constant: -30),
            magnifyingGlassButton.trailingAnchor.constraint(equalTo: nftImageView.trailingAnchor, constant: -20),
            magnifyingGlassButton.heightAnchor.constraint(equalToConstant: 35),
            magnifyingGlassButton.widthAnchor.constraint(equalToConstant: 35)
        ])
    }
}
 
