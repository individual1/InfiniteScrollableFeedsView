//
//  FeedsWireframe.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//


import Foundation
import UIKit

class  FeedsWireframe : FeedsWireframeInterface {
   
    var root: RootWireframe?
    var style: WireframeStyle!
    
    required init(root: RootWireframe?) {
        self.root = root
    }

    static var feedsStoryboard: UIStoryboard {
        return UIStoryboard(name: ViewControllerIds.feedsStoryBoard, bundle: Bundle.main)
    }
    
    static func createFeedsModule() -> FeedsModule {
        let view = FeedsView()
        let module = FeedsModule(view: view)
        module.build(root:(((UIApplication.shared.delegate) as! AppDelegate).root as? RootWireframe))
        return module
    }
    
    func showFeedsDetailsScreen(from view: FeedsViewInterface, for model: FeedsModel) {
        //Write here code to navigate detail controller view
    }
   
}
