//
//  Helper.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit
import AVFoundation
import Alamofire
import Foundation

class Helper :NSObject{
    class func headers() -> HTTPHeaders {
        let headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "Accept": "application/json"
        ]
        return headers
    }
}


