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
        sut.thumbnail = CONSTANT.thumbnail
        sut.title = CONSTANT.tittle
        sut.num_comments = CONSTANT.nocomments
        sut.afterLink = CONSTANT.afterLink
        sut.score = CONSTANT.score
        sut.thumbnailWidth = Int(CONSTANT.thumbnail_width)
        sut.thumbnailHeight = Int(CONSTANT.thumbnail_height)
    }
    
    func testModelCreated(){
        XCTAssertNotNil(sut)
        XCTAssertNotNil(sut.toJSONString())
    }
}
