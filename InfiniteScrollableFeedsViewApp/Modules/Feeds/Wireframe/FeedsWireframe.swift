//
//  MyCasesWireframe.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import UIKit

class  FeedsWireframe : FeedsWireframeInterface {
    func showFeedsDetailsScreen(from view: FeedsViewInterface, for model: FeedsModel) {
    }
   
    var root: RootWireframe?
    
    var style: WireframeStyle!
    
    required init(root: RootWireframe?) {
        self.root = root
    }

    static var feedsStoryboard: UIStoryboard {
        return UIStoryboard(name: "Feeds", bundle: Bundle.main)
    }
    
    static func createFeedsModule() -> FeedsModule {
        let view = feedsStoryboard.instantiateViewController(ofType: FeedsView.self)
        let module = FeedsModule(view: view)
        module.build(root:(((UIApplication.shared.delegate) as! AppDelegate).root as? RootWireframe))
        return module
    }
    
//    func showMyCaseDetailsScreen(from view: MyCasesViewInterface, for model: MyCaseModel) {
//        let module = CaseCreationModule()
//        module.build(root:self.root)
//        module.presenter.applicationId = model.applicantId
//        module.presenter.itemStatus = model.status
//        module.presenter.isFromMycase = true
//
//        self.push(viewController: module.view.controller, from: view.controller)
//    }
}
