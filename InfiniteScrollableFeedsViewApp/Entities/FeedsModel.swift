//
//  FeedsModel.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation
import ObjectMapper

struct FeedsModel {
    var thumbnail: String?
    var title: String?
    var num_comments: Int?
    var score: Int?
    var afterLink: String?
    var thumbnailWidth: Int?
    var thumbnailHeight: Int?
}

extension FeedsModel: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        thumbnail     <- map["thumbnail"]
        title          <- map["title"]
        num_comments          <- map["num_comments"]
        score          <- map["score"]
        afterLink          <- map["after"]
        thumbnailWidth          <- map["thumbnail_width"]
        thumbnailHeight          <- map["thumbnail_height"]
    }
}
