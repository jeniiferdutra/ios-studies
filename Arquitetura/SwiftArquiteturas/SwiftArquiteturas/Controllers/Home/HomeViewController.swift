//
//  HomeViewController.swift
//  SwiftArquiteturas
//
//  Created by Jenifer Rocha on 23/07/25.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var homeView: HomeView = {
        let view = HomeView(frame: .zero )
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    }
}
