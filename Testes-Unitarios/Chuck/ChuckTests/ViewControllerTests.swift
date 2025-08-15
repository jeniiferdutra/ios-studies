//
//  ViewControllerTests.swift
//  ChuckTests
//
//  Created by Jenifer Rocha on 13/08/25.
//

import XCTest
@testable import Chuck

final class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    var tableView: UITableView!
    var tableViewMock: TableViewMock!

    override func setUpWithError() throws {
        tableViewMock = TableViewMock()
        viewController = ViewController()
        tableView = UITableView()
        viewController.tableView = tableView
        viewController.configTableView()
    }

    override func tearDownWithError() throws {
        viewController = nil
        tableView = nil
        tableViewMock = nil
    }

    func testConfigTableView() {
        
        // Verifica se o delegate e dataSource da TableView é do tipo ViewController
        XCTAssertTrue(viewController.tableView.delegate is ViewController)
        XCTAssertTrue(viewController.tableView.dataSource is ViewController)
    }
    
    // Testa se o método numberOfRows(inSection:) é chamado corretamente
    func testNumberOfRowsInSection() {
        
        // Define que o dataSource da tableViewMock será o viewController
        tableViewMock.dataSource = viewController
        
        // Garante que o contador de chamadas ainda está em 0 (nenhuma chamada feita)
        XCTAssertEqual(tableViewMock.numberOfRowsInSectionCallCount, 0)
        
        // Chama o método numberOfRows(inSection:) para a seção 0
        _ = tableViewMock.numberOfRows(inSection: 0)
        
        // Verifica se o contador aumentou para 1 (uma chamada feita)
        XCTAssertEqual(tableViewMock.numberOfRowsInSectionCallCount, 1)
    }
    
    // Testa se o método cellForRow(at:) é chamado corretamente
    func testCellForRowAtIndexPath() {
        
        // Define que o dataSource da tableViewMock será o viewController
        tableViewMock.dataSource = viewController
        
        // Garante que o contador de chamadas ainda está em 0 (nenhuma chamada feita)
        XCTAssertEqual(tableViewMock.cellForRowAtIndexPathCallCount, 0)
        
        // Chama o método numberOfRows(inSection:) para a seção 0
        _ = tableViewMock.cellForRow(at: IndexPath(row: 0, section: 0))
        
        // Verifica se o contador aumentou para 1 (uma chamada feita)
        XCTAssertEqual(tableViewMock.cellForRowAtIndexPathCallCount, 1)
    }
}

// Mock personalizado de UITableView para contar chamadas de métodos
class TableViewMock: UITableView {
    // Conta quantas vezes numberOfRows(inSection:) e cellForRow foram chamados
    var numberOfRowsInSectionCallCount = 0
    var cellForRowAtIndexPathCallCount = 0
    
    // Sobrescreve numberOfRows(inSection:) para aumentar o contador antes de chamar o método original
    override func numberOfRows(inSection section: Int) -> Int {
        numberOfRowsInSectionCallCount += 1
        return super.numberOfRows(inSection: section)
    }
    
    // Sobrescreve cellForRow(at:) para aumentar o contador antes de chamar o método original
    override func cellForRow(at indexPath: IndexPath) -> UITableViewCell? {
        cellForRowAtIndexPathCallCount += 1
        return super.cellForRow(at: indexPath)
    }
}
