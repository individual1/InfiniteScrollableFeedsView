//
//  BaseModule.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

public protocol BaseModule: class {
    
    var presenter: ModulePresenter! { get set }
    var wireframe: ModuleWireframe! { get set }
    var view: ModuleView! { set get }
    
    init(view: ModuleView)
    
    associatedtype ModulePresenter
    associatedtype ModuleWireframe
    associatedtype ModuleView
}

public protocol BaseModulePresentable: class {
    
    var view: ModuleView! { get set }
    var wireframe: ModuleWireframe! { get set }
    
    associatedtype ModuleView
    associatedtype ModuleWireframe
}

public protocol BaseModuleInteractable: class {
    
    var interactor: ModuleInteractor! { get set }
    
    associatedtype ModuleInteractor
}

public protocol BaseModuleRemotable: class {
    
    var remoteDataManager: ModuleRemoteDataManager! { get set }
    
    associatedtype ModuleRemoteDataManager
}


public protocol BaseModuleBuilder: class {
    func build(root: RootWireframe?)
}
