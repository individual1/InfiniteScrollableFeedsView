//
//  BaseModulePresenterTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
@testable import InfiniteScrollableFeedsViewApp

class BaseModulePresenterTest: XCTestCase {
    var sut: FeedsPresenter?
    
    override  func setUp() {
        sut = FeedsPresenter()
    }
    
    func testMethods() {
        sut?.viewDidLoad()
        sut?.viewDidAppear(animated: true)
        sut?.viewWillAppear(animated: true)
        sut?.viewDidDisappear(animated: true)
        sut?.viewWillDisappear(animated: true)
        sut?.presentLogin()
    }
}
