//
//  QuotatioEthTableViewCell.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 16/05/25.
//

import UIKit

class QuotatioEthTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: QuotatioEthTableViewCell.self)
    
    lazy var screen: QuotatioEthTableViewCellScreen = {
        let view = QuotatioEthTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    
    public func setupCell(data: QuotationEthereum) {
        screen.ethValueLabel.text = "\(data.ethValue ?? 0) ETH"
        screen.ethValueInDollarsLabel.text = "$\(data.valueInDollars ?? 0)"
        screen.coinEthImageView.image = UIImage(named: data.coinEthImage ?? "")
    }



}
