//
//  FeedsPresenter.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation

class FeedsPresenter : BaseModulePresentable, BaseModuleInteractable {
    typealias ModuleView = FeedsViewInterface
    typealias ModuleWireframe = FeedsWireframeInterface
    typealias ModuleInteractor = FeedsInteractorInput
    
    // MARK: - Properties
    weak var view: ModuleView!
    var interactor: ModuleInteractor!
    var wireframe: ModuleWireframe!
    var _feedItems: [FeedsModel] = []
}

// MARK: - FeedsPresenterInterface Extension
extension FeedsPresenter: FeedsPresenterInterface {
    
    func fetchFeedsList(afterLink: String) {
        view.showHUD()
        self.interactor.fetchData(after: afterLink)
    }
 
    func navTitle() -> String {
        return ControllerTittle.feedsTittle
    }
    
    func numberOfSections() -> Int {
        return _feedItems.count
    }
    
    func numberOfItems(in section: Int) -> Int {
        return 1
    }
    
    func item(at indexPath: IndexPath) -> FeedsModel? {
        return _feedItems[indexPath.section]
    }
}

// MARK: - FeedsInteractorOutput Extension

extension FeedsPresenter: FeedsInteractorOutput {
    //Getting back the response data
    func onResponseFeedss(_ result: AnyResult) {
        view.hideHUD()
        switch result {
        case .success(let jsonObject):
            self.handleResponse(jsonObject as? [String : Any])
        case .failure( _): break
           //Handle the failure case here
        }
    }
    
    //Handled the API response here
    func handleResponse(_ data:[String:Any]?) {
        guard let _data = data?[Keys.data] as? [String:Any] else { return }
        
        let afterLink = _data[Keys.after]
        if let childObj = _data[Keys.children] as? Array<Any>  {
            for i in 0..<childObj.count {
                let children = childObj[i] as? [String : Any]
                guard let _data = children?[Keys.data] as? [String:Any] else { return }
                if let _ = _data[Keys.numComments] as? NSNumber, let _ = _data[Keys.score] as? NSNumber {
                    let numberComments = _data[Keys.numComments] as? NSNumber
                    let score = _data[Keys.score] as? NSNumber
                    let FeedModel = FeedsModel(thumbnail: (_data[Keys.thumbnail]! as! String),
                                               title: (_data[Keys.tittle]! as! String),
                                               num_comments: numberComments as? Int ?? 0,
                                               score: score as? Int ?? 0,
                                               afterLink: afterLink as? String,
                                               thumbnailWidth: _data[Keys.thumbnailWidth] as? Int ?? 0,
                                               thumbnailHeight:  _data[Keys.thumbnailHeight] as? Int ?? 0)
                    _feedItems.append(FeedModel)
                }
            }
        }
        view?.reloadData()
    }
}
