//
//  FeedsInteractor.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
class FeedsInteractor : FeedsInteractorInterface {
    typealias RemoteDataManagerInput = FeedsRemoteDataManagerInput
    typealias Output = FeedsInteractorOutput
    
    var remoteDataManagerInput: RemoteDataManagerInput?
    weak var output: Output?
}

extension FeedsInteractor : FeedsInteractorInput {
    func fetchData() {
        self.remoteDataManagerInput?.fetchData()
    }
}


extension FeedsInteractor : FeedsRemoteDataManagerOutput {
    func onResponseFeedss(_ result: FeedsResult) {
         output?.onResponseFeedss(result)
    }
    
    
}
