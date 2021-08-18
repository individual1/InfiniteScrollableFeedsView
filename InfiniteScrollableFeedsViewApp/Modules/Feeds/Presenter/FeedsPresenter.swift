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
extension FeedsPresenter : FeedsPresenterInterface {
    
    func fetchFeedsList(afterLink: String) {
        //Start the loader here
        self.interactor.fetchData(after: afterLink)
    }
 
    func navTitle() -> String {
        return CONTROLLER_TITLE.FEEDS_TITLE
    }
    
    func numberOfSections() -> Int {
             return _feedItems.count
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
        return _feedItems[indexPath.section]
    }
    
    func item(at section: Int) -> FeedsModel? {
        return _feedItems[section]
    }
}

// MARK: - FeedsInteractorOutput Extension

extension FeedsPresenter : FeedsInteractorOutput {
    //Getting back the response data
    func onResponseFeedss(_ result: AnyResult) {
        //Hide the loader here
        switch result {
        case .success(let jsonObject):
            self.handleResponse(jsonObject as? [String : Any])
        case .failure( _): break
           //Handle the failure case here
        }
    }
    
    //Handled the API response here
    func handleResponse(_ data:[String:Any]?) {
        guard let _data = data?[KEYS.DATA] as? [String:Any] else {
            return
        }
        let afterLink = _data[KEYS.AFTER]
        if let passportNumbers = _data[KEYS.CHILDREN] as? Array<Any>  {
            for i in 0..<passportNumbers.count {
                let children = passportNumbers[i] as? [String : Any]
                guard let _data = children?[KEYS.DATA] as? [String:Any] else {
                   return
                }
                if ((_data[KEYS.NUM_COMMENTS] as? NSNumber) != nil) && ((_data[KEYS.SCORE] as? NSNumber) != nil){
                    let numberComments = _data[KEYS.NUM_COMMENTS] as? NSNumber
                    let score = _data[KEYS.SCORE] as? NSNumber
                    let FeedModel = FeedsModel(thumbnail: (_data[KEYS.THUMBNAIL]! as! String), title: (_data[KEYS.TITTLE]! as! String), num_comments: numberComments as? Int ?? 0, score: score as? Int ?? 0, afterLink: afterLink as? String, thumbnailWidth: _data[KEYS.THUMBNAIL_WIDTH] as? Int ?? 0, thumbnailHeight:  _data[KEYS.THUMBNAIL_HEIGHT] as? Int ?? 0)
                    _feedItems.append(FeedModel)
                }
            }
        }
        view?.reloadData()
    }
}
