//
//  BaseModuleRemoteDataManagerTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
@testable import InfiniteScrollableFeedsViewApp

class BaseModuleRemoteDataManagerTest: XCTestCase {
    var sutOutput: FeedsRemoteDataManagerOutput?
    var sut: FeedsRemoteDataManagerInput?

    func testRemoteDataManagerInput() {
        sutOutput?.onResponseData(NSDictionary())
        sutOutput?.onError(error: "error")
        sut?.fetchData(after: "")
    }
}
