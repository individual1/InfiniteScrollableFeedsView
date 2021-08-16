//
//  FeedsInteractor.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation
class FeedsInteractor : FeedsInteractorInterface {
    typealias RemoteDataManagerInput = FeedsRemoteDataManagerInput
    typealias Output = FeedsInteractorOutput
    
    var remoteDataManagerInput: RemoteDataManagerInput?
    weak var output: Output?
}

extension FeedsInteractor : FeedsInteractorInput {
    func fetchData(after: String) {
        self.remoteDataManagerInput?.fetchData(after: after)
    }
}


extension FeedsInteractor : FeedsRemoteDataManagerOutput {
    func onResponseFeedss(_ result: AnyResult) {
         output?.onResponseFeedss(result)
    }    
}
