//
//  TabBarVC.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 01/05/25.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        let wallet = UINavigationController(rootViewController: WalletVC())
        let profile = UINavigationController(rootViewController: ProfileVC())
        setViewControllers([home, wallet, profile], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 130/255, green: 26/255, blue: 201/255, alpha: 1.0)
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance

        guard let itens = tabBar.items else { return }
        
        itens[0].image = UIImage(systemName: "trash")
        itens[1].image = UIImage(systemName: "wallet.pass")
        itens[2].image = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
    }

}
