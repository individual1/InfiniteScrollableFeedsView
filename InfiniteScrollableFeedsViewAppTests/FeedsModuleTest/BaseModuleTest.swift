//
//  BaseModuleTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
@testable import InfiniteScrollableFeedsViewApp

class BaseModuleTest: XCTestCase {
    var sut: FeedsView!
    
    override  func setUp() {
        sut = FeedsView()
    }
    
    func testBaseModuleView() {
        sut.showHUD()
        sut.showError(error: "test error")
        sut.showHUD(message: "test message")
        sut.hideHUD()
        sut.showHUD(withError: "test error")
    }
}
