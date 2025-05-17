//
//  WalletVC.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 15/05/25.
//

import UIKit

enum WalletNameCell: Int {
    case quotationEth = 0
    case transactionList = 1
}

class WalletVC: UIViewController {
    
    private var screen: WalletScreen?
    private var viewModel: WalletViewModel = WalletViewModel()
    
    override func loadView() {
        screen = WalletScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetch(.request)
    }
}

extension WalletVC: WalletViewModelDelegate {
    
    func success() {
        DispatchQueue.main.async {
            self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
            self.screen?.tableView.reloadData()
        }
    }
    
    func error() {
        print(#function)
    }
    
}

extension WalletVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch WalletNameCell(rawValue: indexPath.row) {
        case .quotationEth:
            let cell = tableView.dequeueReusableCell(withIdentifier: QuotatioEthTableViewCell.identifier, for: indexPath) as? QuotatioEthTableViewCell
            cell?.setupCell(data: viewModel.quotationEthereum)
            return cell ?? UITableViewCell()
        case .transactionList:
            let cell = tableView.dequeueReusableCell(withIdentifier: LatestTransactionsTableViewCell.identifier, for: indexPath) as? LatestTransactionsTableViewCell
            cell?.setupCell(data: viewModel.latestTransactionsCell )
            return cell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
}
