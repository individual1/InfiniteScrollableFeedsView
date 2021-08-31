//
//  UITableViewExtensionTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import UIKit
import XCTest

@testable import InfiniteScrollableFeedsViewApp

class UITableViewExtensionTest: XCTestCase {
    var sut: UITableView!
    
    override  func setUp() {
        sut = UITableView()
    }
    
    func testLoading() {
        sut.addLoading(IndexPath(item: 0, section: 0)) {
            XCTAssert(self.sut.indicatorView().isAnimating == true)
        }
    }
    
    func testStopLoading() {
        sut.stopLoading()
        XCTAssert(sut.indicatorView().isAnimating == false)
    }
}
