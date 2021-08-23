//
//  FeedsModelTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
@testable import InfiniteScrollableFeedsViewApp

class FeedsModelTest: XCTestCase {
    var sut: FeedsModel!
    
    override func setUp() {
        sut = FeedsModel()
        sut.thumbnail = MockData.thumbnail
        sut.title = MockData.tittle
        sut.num_comments = MockData.nocomments
        sut.afterLink = MockData.afterLink
        sut.score = MockData.score
        sut.thumbnailWidth = Int(MockData.thumbnail_width)
        sut.thumbnailHeight = Int(MockData.thumbnail_height)
    }
    
    func testModelCreated(){
        XCTAssertNotNil(sut)
        XCTAssertNotNil(sut.toJSONString())
    }
}
