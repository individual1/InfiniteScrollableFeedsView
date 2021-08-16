//
//  Endpoints.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation

fileprivate struct API {
    static let baseUrl = "http://www.reddit.com/.json"
    static let baseUrlAfter = "http://www.reddit.com/.json?after="
   
}

fileprivate protocol Endpoint {
    var path: String { get }
    var url: String { get }
}
    
enum Endpoints {
    enum Feeds: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "?after="
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
