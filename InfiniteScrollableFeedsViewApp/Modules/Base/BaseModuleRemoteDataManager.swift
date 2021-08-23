//
//  BaseModuleRemoteDataManager.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import Foundation

public protocol BaseModuleRemoteDataManager: class {
    var output: Output? { get set }
    associatedtype Output
}

public protocol BaseModuleRemoteDataManagerInput: class {
    func fetchData(after: String)
}

extension BaseModuleRemoteDataManagerInput {
    func fetchData(after: String) {
        //optional
    }
}

public protocol BaseModuleRemoteDataManagerOutput: class {
    func onResponseData(_ data: NSDictionary)
    func onError(error: String?)
}

extension BaseModuleRemoteDataManagerOutput {
    func onResponseData(_ data: NSDictionary) {
        //optional
    }
    func onError(error: String?) {
        //optional
    }
}
