//
//  FeedsProtocols.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation

protocol FeedsModuleBuilder: BaseModuleBuilder { }

protocol FeedsViewInterface: BaseModuleView {
    var presenter: FeedsPresenterInterface! { set get }
    func reloadData()
}

protocol FeedsPresenterInterface: BaseModulePresenter {
    var  emptyFeedsText: String? { get }
    func fetchFeedsList(afterLink: String)
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> FeedsModel?
    func item(at section: Int) -> FeedsModel?
    func didSelectItem(at indexPath: IndexPath)
}
protocol FeedsWireframeInterface: BaseModuleWireframe {
    static func createFeedsModule() -> FeedsModule
    func showFeedsDetailsScreen(from view: FeedsViewInterface, for model: FeedsModel)
}


protocol FeedsInteractorInput: BaseModuleInteractorInput {
    func fetchData(after: String)
}

protocol FeedsInteractorOutput: BaseModuleInteractorOutput {
    func onResponseFeedss(_ result: AnyResult)
}

protocol FeedsInteractorInterface: BaseModuleInteractor {
    
}


protocol FeedsRemoteDataManagerInput: BaseModuleRemoteDataManagerInput {
    
}

protocol FeedsRemoteDataManagerOutput: BaseModuleRemoteDataManagerOutput {
    func onResponseFeedss(_ result: AnyResult)
}

protocol FeedsRemoteDataManagerInterface: BaseModuleRemoteDataManager {
    
}
