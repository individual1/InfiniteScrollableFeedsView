//
//  FeedsRemoteDataManager.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

typealias FeedsResult = Result<[FeedsModel],AFError>

class FeedsRemoteDataManager : FeedsRemoteDataManagerInterface {
    typealias Output = FeedsRemoteDataManagerOutput
    weak var output: Output?
}
extension FeedsRemoteDataManager :FeedsRemoteDataManagerInput {
    
    func fetchData() {
        debugPrint("URL::::::\(Endpoints.Feeds.fetch.url)")
        AF.request(
            Endpoints.Feeds.fetch.url,
            method: .get,
            parameters: nil,
            headers: Helper.headers()
            ).responseArray(keyPath: KEYS.FEEDS_PATH) { (response: AFDataResponse<[FeedsModel]>) in
                self.output?.onResponseFeedss(response.result)
        }
    }
}
