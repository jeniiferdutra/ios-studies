//
//  ViewModelTests.swift
//  ChuckTests
//
//  Created by Jenifer Rocha on 12/08/25.
//

import XCTest
@testable import Chuck

final class ViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    var mockService: MockHomeService!

    override func setUpWithError() throws {
        mockService = MockHomeService()
        viewModel = HomeViewModel(service: mockService)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
}

class MockHomeService: HomeServiceProtocol {
    var result: Result<[String], Error> = .success([])
    func getHome(completion: @escaping (Result<[String], any Error>) -> Void) {
        completion(result)
    }
    
    
}
