//
//  FeedsRemoteDataManager.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

typealias AnyResult = Result<Any>

class FeedsRemoteDataManager: FeedsRemoteDataManagerInterface {
    typealias feedsRemoteDataOutput = FeedsRemoteDataManagerOutput
    weak var output: feedsRemoteDataOutput?
    private var isFetchInProgress = false
}

extension FeedsRemoteDataManager: FeedsRemoteDataManagerInput {

    //API call to get the feeds
    func fetchData(after:String) {
        guard !isFetchInProgress else { return }
        
        isFetchInProgress = true
        Alamofire.request(
            Endpoints.Feeds.fetch.url.appending(after),
            method: .get,
            parameters: nil,
            headers: Helper.headers()
        ).responseJSON { (dataResponse) in
            self.isFetchInProgress = false
            self.output?.onResponseFeedss(dataResponse.result)
        }
    }
}
