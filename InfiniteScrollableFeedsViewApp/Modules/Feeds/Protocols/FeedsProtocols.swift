//
//  FeedssProtocols.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation

protocol FeedsModuleBuilder: BaseModuleBuilder { }

protocol FeedsViewInterface: BaseModuleView {
    var presenter: FeedsPresenterInterface! { set get }
    func reloadData()
}

protocol FeedsPresenterInterface: BaseModulePresenter {
    var  emptyFeedsText: String? { get }
    func fetchFeedsList()
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> FeedsModel?
    func item(at section: Int) -> FeedsModel?
    func didSelectItem(at indexPath: IndexPath)
    func back()
}
protocol FeedsWireframeInterface: BaseModuleWireframe {
    static func createFeedsModule() -> FeedsModule
    func showFeedsDetailsScreen(from view: FeedsViewInterface, for model: FeedsModel)
}


protocol FeedsInteractorInput: BaseModuleInteractorInput {
    func fetchData()
}

protocol FeedsInteractorOutput: BaseModuleInteractorOutput {
    func onResponseFeedss(_ result: FeedsResult)
}

protocol FeedsInteractorInterface: BaseModuleInteractor {
    
}


protocol FeedsRemoteDataManagerInput: BaseModuleRemoteDataManagerInput {
    
}

protocol FeedsRemoteDataManagerOutput: BaseModuleRemoteDataManagerOutput {
    func onResponseFeedss(_ result: FeedsResult)
}

protocol FeedsRemoteDataManagerInterface: BaseModuleRemoteDataManager {
    
}
