//
//  FeedsViewTest.swift
//  InfiniteScrollableFeedsViewAppTests
//
//  Created by Bhawna on 15/08/21.
//

import XCTest
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
        self.setUpView()
        self.initModuleComponents()
        self.initFeedModel()
        self.registerCellForTableView()
    }
    
    func registerCellForTableView() {
        sut.tblView.register(FeedsCell.self, forCellReuseIdentifier: "cellid")
        sut.tblView.dequeueReusableCell(withIdentifier: "cellid")
    }
    
    func setUpView() {
        appWireframe = AppWireframe()
        appWireframe.showRoot(with: UIViewController(), in: UIWindow())
        appdependency = AppDependency.shared
        let window = UIWindow(frame: UIScreen.main.bounds)
        appdependency.attachRootViewControllerInWindow(window)
        window.makeKeyAndVisible()
    }
    
    func initModuleComponents() {
        sut = FeedsView()
        presenter = FeedsPresenter()
        interactor = FeedsInteractor()
        remoteDataManger = FeedsRemoteDataManager()
        sut.tblView = UITableView()
        wireframe = FeedsWireframe(root: appWireframe)
    }
    
    func initFeedModel() {
        var feedItem: [FeedsModel] = []
        feedItem.append(FeedsModel(thumbnail: MockData.thumbnail,
                                   title: MockData.tittle,
                                   num_comments: MockData.nocomments,
                                   score: MockData.score,
                                   afterLink: MockData.afterLink,
                                   thumbnailWidth: Int(MockData.thumbnail_width),
                                   thumbnailHeight: Int(MockData.thumbnail_height)))
        presenter._feedItems = feedItem
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testTableViewinFeedView() {
        XCTAssertNotNil(sut.tblView.numberOfSections)
        XCTAssertNotNil(sut.tblView.numberOfRows(inSection: 0))
    }
    
    func testCell() {
        let feed = FeedsCell()
        XCTAssertNotNil(feed.ResizeImage(image: UIImage.init(named: ImageName.share)!, targetSize: CGSize.init(width: 140, height: 140)))
        feed.configureCell(imgageUrlStr: MockData.thumbnail,
                           feedTittle: MockData.tittle,
                           feedNoofComments: MockData.nocomments,
                           feedScore: MockData.score,
                           thumbnailWidth: Int(MockData.thumbnail_width),
                           thumbnailHeight: Int(MockData.thumbnail_height))
    }
    
    func testFeedViewMethod() {
        sut.reloadData()
        XCTAssertNotNil(sut.visibleIndexPathsToReload(intersecting: [IndexPath(row: 0, section: 0)]))
    }

    func testIfPresenterHasBeenCreated() {
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

