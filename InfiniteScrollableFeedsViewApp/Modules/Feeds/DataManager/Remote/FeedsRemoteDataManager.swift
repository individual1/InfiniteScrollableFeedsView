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

class FeedsRemoteDataManager : FeedsRemoteDataManagerInterface {
    typealias Output = FeedsRemoteDataManagerOutput
    weak var output: Output?
    private var isFetchInProgress = false
}
extension FeedsRemoteDataManager :FeedsRemoteDataManagerInput {
    
    func fetchData(after:String) {
        debugPrint("URL::::::\(Endpoints.Feeds.fetch.url)")
        guard !isFetchInProgress else {
            return
        }
        isFetchInProgress = true
       // DispatchQueue.main.async { [unowned self] in
        Alamofire.request(
            Endpoints.Feeds.fetch.url.appending(after),
            method: .get,
            parameters: nil,
            headers: Helper.headers()
        ).responseJSON { (dataResponse) in
            self.isFetchInProgress = false
            self.output?.onResponseFeedss(dataResponse.result)
        }
   // }
    }
}
