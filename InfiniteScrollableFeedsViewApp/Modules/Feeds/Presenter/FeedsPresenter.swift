//
//  FeedsPresenter.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation

class FeedsPresenter : BaseModulePresentable, BaseModuleInteractable {
    typealias ModuleView = FeedsViewInterface
    
    typealias ModuleWireframe = FeedsWireframeInterface
    
    typealias ModuleInteractor = FeedsInteractorInput
    
    weak var view: ModuleView!
    var interactor: ModuleInteractor!
    var wireframe: ModuleWireframe!
    
    private var _caseItems: [FeedsModel] = []
    private var _emptyFeedsText: String = ""
}
extension FeedsPresenter : FeedsPresenterInterface {
   
    
    func fetchFeedsList() {
        view.showHUD()
        self.interactor.fetchData()
    }
    
   
    var emptyFeedsText: String? {
        return _emptyFeedsText
    }
    
    
    func navTitle() -> String {
        return "CONTROLLER_TITLE.MY_CASES_TITLE"
    }
    
    func numberOfSections() -> Int {
        if self.emptyFeedsText?.count == 0 {
            return _caseItems.count
        } else {
            return 1
        }
    }
    
    func numberOfItems(in section: Int) -> Int {
        return 1
    }
    
    func didSelectItem(at indexPath: IndexPath) {
        if let item = self.item(at: indexPath.section) {
            self.wireframe.showFeedsDetailsScreen(from: view, for: item)
        }
    }
    func item(at indexPath: IndexPath) -> FeedsModel? {
        return _caseItems[indexPath.section]
    }
    
    func item(at section: Int) -> FeedsModel? {
        return _caseItems[section]
    }
    
  
   
    func presentLogin() {
        self.wireframe.showLoginScreen(from: view.controller)
    }
    func back() {
        wireframe.pop(viewController: view.controller)
    }
}
extension FeedsPresenter : FeedsInteractorOutput {
    
    func onResponseFeedss(_ result: FeedsResult) {
        view.hideHUD()
        switch result {
        case .success(let jsonObject):
            debugPrint("jsonObject :::: \(jsonObject)")
            _caseItems.removeAll()
            _caseItems = jsonObject
            if _caseItems.count > 0 {
                _emptyFeedsText = ""
            } else {
               // _emptyFeedsText = ERROR_MESSAGE.MY_CASE_EMPTY
            }
            view?.reloadData()
            
        case .failure(let error):
            debugPrint(error.isInvalidURLError )
            debugPrint(error.isSessionTaskError )
//            if error.message == ERROR_MESSAGE.DONT_HAVE_PROFILE {
//                _emptyFeedsText = ERROR_MESSAGE.MY_CASE_EMPTY
//                 view?.reloadData()
//            } else {
//                _emptyFeedsText = ""
//                 self.wireframe.showError(error: error.message, from: view.controller)
//            }
        }
    }
}
