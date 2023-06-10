//
//  AlertViewModelTests.swift
//  AlertAppTests
//
//  Created by takemasa kaji on 2023/06/10.
//

import XCTest

final class AlertViewModelTests: XCTestCase {
    
    class MockModel: AlertModelProtocol {
        var delegate: AlertModelDelegate?
        
        func startTimer(minutes: Int) {
            
        }
    }
    
    private var viewModel: AlertViewModel?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let mock: MockModel = .init()
        viewModel = .init(_model: mock)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSetValue() {
        let number: String = "1"
        let result = viewModel!.setValue(value: number)
        XCTAssert(result)
    }
    
    func testSetValueWithIllegalValue() {
        let str: String = "hello"
        let result = viewModel!.setValue(value: str)
        XCTAssert(!result)
    }

}
