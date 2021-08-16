//
//  BaseModule.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

public protocol BaseModule: class {
    
    var presenter: ModulePresenter! { set get }
    var wireframe: ModuleWireframe! { set get }
    var view: ModuleView! { set get }
    
    init(view: ModuleView)
    
    associatedtype ModulePresenter
    associatedtype ModuleWireframe
    associatedtype ModuleView
}

public protocol BaseModulePresentable: class {
    
    var view: ModuleView! { set get }
    var wireframe: ModuleWireframe! { set get }
    
    associatedtype ModuleView
    associatedtype ModuleWireframe
}

public protocol BaseModuleInteractable: class {
    
    var interactor: ModuleInteractor! { set get }
    
    associatedtype ModuleInteractor
}

public protocol BaseModuleRemotable: class {
    
    var remoteDataManager: ModuleRemoteDataManager! { set get }
    
    associatedtype ModuleRemoteDataManager
}

//public protocol BaseModuleDelegate: class {
//    
//}
//
//public protocol BaseModuleDelegatable: class {
//    
//    var delegate: ModuleDelegate? { set get }
//    
//    associatedtype ModuleDelegate
//}

public protocol BaseModuleBuilder: class {
    func build(root: RootWireframe?)
}

//public protocol BaseModuleDependency: class {
//
//}
//
//public protocol BaseModuleWireframeDependency: class {
//
//}
