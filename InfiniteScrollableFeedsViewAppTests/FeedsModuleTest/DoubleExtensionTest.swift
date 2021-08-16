//
//  DoubleExtensionTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
@testable import InfiniteScrollableFeedsViewApp

class DoubleExtensionTest: XCTestCase {
    var sut: Double?
    
    func testDoubleReduce() {
        XCTAssertNil(sut?.reduceScale(to: 4646))
        XCTAssertEqual((formatNumber(6777)), "6.7K")
        XCTAssertEqual((formatNumber(60000000000)), "60.0B")
        XCTAssertEqual((formatNumber(60000000)), "60.0M")
        XCTAssertEqual((formatNumber(0)), "0")
        XCTAssertEqual((formatNumber(Int(0.5))), "0")
    }
}
