//
//  FeedsViewTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
import Alamofire
import Foundation
import UIKit
@testable import InfiniteScrollableFeedsViewApp

class FeedsViewTest: XCTestCase, UITableViewDelegate {
    var tableView: UITableView!
    var appWireframe: AppWireframe!
    typealias Output = FeedsRemoteDataManagerOutput
    weak var output: Output?
    var appdependency: AppDependency!
    var presenter: FeedsPresenter!
    var interactor: FeedsInteractor!
    var remoteDataManger: FeedsRemoteDataManager!
    var interatcorOutput: FeedsInteractorOutput?
    
    var wireframe: FeedsWireframe?
    var sut: FeedsView!
    
    override func setUp() {
        appWireframe = AppWireframe()
        appWireframe.showRoot(with: UIViewController(), in: UIWindow())
        appdependency = AppDependency.shared
        let window = UIWindow(frame: UIScreen.main.bounds)
        appdependency.attachRootViewControllerInWindow(window)
        window.makeKeyAndVisible()
        
        sut = FeedsView()
        presenter = FeedsPresenter()
        interactor = FeedsInteractor()
        remoteDataManger = FeedsRemoteDataManager()
        sut.tblView = UITableView()
        wireframe = FeedsWireframe(root: appWireframe)
        
        var feedItem: [FeedsModel] = []
        feedItem.append(FeedsModel(thumbnail: CONSTANT.thumbnail, title: CONSTANT.tittle, num_comments: CONSTANT.nocomments, score: CONSTANT.score, afterLink: CONSTANT.afterLink, thumbnailWidth: Int(CONSTANT.thumbnail_width), thumbnailHeight: Int(CONSTANT.thumbnail_height)))
        presenter._feedItems = feedItem
        
        sut.tblView.register(FeedsCell.self, forCellReuseIdentifier: "cellid")
        sut.tblView.dequeueReusableCell(withIdentifier: "cellid")
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testTableViewoFFeedView() {
        XCTAssertNotNil(sut.tblView.numberOfSections)
        XCTAssertNotNil(sut.tblView.numberOfRows(inSection: 0))
        sut.tblView.delegate = sut.self
        sut.tblView.dataSource = sut.self
    }
    
    func testCell() {
        let feed = FeedsCell()
        XCTAssertNotNil(feed.ResizeImage(image: UIImage.init(named: IMAGE_NAME.SHARE)!, targetSize: CGSize.init(width: 140, height: 140)))
        feed.configureCell(imgageUrlStr: CONSTANT.thumbnail, feedTittle: CONSTANT.tittle, feedNoofComments: CONSTANT.nocomments, feedScore: CONSTANT.score, thumbnailWidth: Int(CONSTANT.thumbnail_width), thumbnailHeight: Int(CONSTANT.thumbnail_height))
    }
    
    func testFeedViewMethod() {
        sut.reloadData()
        XCTAssertNotNil(sut.visibleIndexPathsToReload(intersecting: [IndexPath(row: 0, section: 0)]))
    }

    func testisCreatedPresenter() {
        XCTAssertNotNil(presenter.item(at: 0))
        presenter.interactor = FeedsInteractor()
        XCTAssertNotNil(presenter.fetchFeedsList(afterLink: ""))
        XCTAssertNotNil(presenter.handleResponse([:]))
        XCTAssertNotNil(presenter.numberOfItems(in: 0))
    }
    
    func testRemoteDataManager() {
        remoteDataManger.fetchData(after: "")
    }
    
    func testInteractor() {
        interactor.onResponseData(NSDictionary())
        interactor.onError(error: "error")
    }
}

