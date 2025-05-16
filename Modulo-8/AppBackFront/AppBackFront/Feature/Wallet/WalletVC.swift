//
//  WalletVC.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 15/05/25.
//

import UIKit

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
        viewModel.fetch(.request)
    }
    
    
}
