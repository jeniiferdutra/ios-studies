//
//  ViewController.swift
//  PrimeiroAppNetwork
//
//  Created by Jenifer Rocha on 20/05/25.
//

import UIKit

class HomeVC: UIViewController {
    
    private var screen: HomeScreen?
    private var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchRequest()
        viewModel.delegate(delegate: self)
    }
}

extension HomeVC: HomeViewModelProtocol {
    func success() {
        screen?.configTableViewProtocol(delegate: self, dataSource: self)
        screen?.tableView.reloadData()
    }
    
    func error(message: String) {
        let alertController: UIAlertController = UIAlertController(title: "ops! tivemos um problema", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupHomeCell(data: viewModel.loadCurrentPerson(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

