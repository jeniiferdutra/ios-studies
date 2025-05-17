//
//  NFTFiltersCollectionViewCell.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 02/05/25.
//

import UIKit

class NFTFiltersCollectionViewCell: UICollectionViewCell {

    static let identifier: String = String(describing: NFTFiltersCollectionViewCell.self)
    
    lazy var screen: NFTFiltersCollectionViewCellScreen = {
        let view = NFTFiltersCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            screen.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    public func setupCell(filter: FilterNft) {
        screen.filterLabel.text = filter.title ?? ""
        if filter.isSelected ?? false {
            screen.filterLabel.backgroundColor = .purple
        } else {
            screen.filterLabel.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        }
            
    }
    
}
