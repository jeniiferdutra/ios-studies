//
//  RegisterCoordinator.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 03/06/25.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onRegisterSuccess = {
            let coordinator = HomeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
}
