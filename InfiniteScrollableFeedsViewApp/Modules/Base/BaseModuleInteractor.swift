//
//  BaseModuleInteractor.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import Foundation

public protocol BaseModuleInteractor: class {

    var remoteDataManagerInput: RemoteDataManagerInput? { set get }

    var output: Output? { set get }

    associatedtype RemoteDataManagerInput
    associatedtype Output
}

public protocol BaseModuleInteractorInput: class {
    
}

public protocol BaseModuleInteractorOutput: class {
//    func didFetchedResponse(_ data: NSDictionary?)
//    func onError(error: String?)
}

//extension BaseModuleInteractorOutput {
//    func didFetchedResponse(_ data: NSDictionary?) {
//        //optional
//    }
//    func onError(error: String?) {
//        //optional
//    }
//}
