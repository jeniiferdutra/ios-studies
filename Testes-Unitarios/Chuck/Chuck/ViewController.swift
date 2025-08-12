//
//  ViewController.swift
//  Chuck
//
//  Created by Jenifer Rocha on 11/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: HomeViewModel = HomeViewModel(service: HomeService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetchRequest()
    }

    func configTableView() {
        tableView.register(CategoryTableViewCell.nib(), forCellReuseIdentifier: CategoryTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
}

extension ViewController: HomeViewModelProtocol {
 
    func success() {
        configTableView()
    }
    
    func error(message: String) {
        print("Error: \(message)")
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentCategory(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
}
