//
//  FeedsModule.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import UIKit

class FeedsModule: BaseModule, BaseModuleInteractable,BaseModuleRemotable {
    
    typealias ModuleView = FeedsViewInterface
    typealias ModuleInteractor = FeedsInteractor
    typealias ModulePresenter =  FeedsPresenter
    typealias ModuleWireframe = FeedsWireframe
    
    typealias ModuleRemoteDataManager = FeedsRemoteDataManager
    
    weak var view: ModuleView!
    var interactor: ModuleInteractor!
    var presenter: ModulePresenter!
    var wireframe: ModuleWireframe!
    var remoteDataManager: ModuleRemoteDataManager!
    
    required init(view: ModuleView) {
        self.view = view
    }
}

extension FeedsModule: FeedsModuleBuilder {
  
    func build(root: RootWireframe?) {
        interactor = FeedsInteractor()
        presenter = FeedsPresenter()
        wireframe = FeedsWireframe(root: root)
        remoteDataManager = FeedsRemoteDataManager()
        view.presenter = presenter
        interactor.output = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        
        interactor.remoteDataManagerInput = remoteDataManager
        remoteDataManager.output = interactor
    }
}

extension FeedsModule {
    
    convenience init() {
        let vc = FeedsWireframe.feedsStoryboard.instantiateViewController(ofType: FeedsView.self)
        self.init(view: vc)
    }
}
