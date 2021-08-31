//
//  Constants.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit

struct Keys {
    static let data = "data"
    static let children = "children"
    static let after = "after"
    static let numComments = "num_comments"
    static let thumbnail = "thumbnail"
    static let thumbnailHeight = "thumbnail_width"
    static let thumbnailWidth = "thumbnail_height"
    static let score = "score"
    static let tittle = "title"
}
   
struct ButtonTittle {
    static let like = "Like"
    static let comment = "Comment"
    static let share = "Share"
}
    
struct ImageName{
    static let like = "likeIcon"
    static let comment = "commentIcon"
    static let share = "shareIcon"
    static let placeholder = "placeholderIcon"
}

struct AlertTittle {
    static let ok = "Ok"
    static let cancel = "Cancel"
    static let warning = "Warning"
}

struct MockData {
    static let thumbnail_width: Int = 140
    static let thumbnail_height: Int = 140
    static let score: Int = 140
    static let nocomments: Int = 340
    static let tittle: String = "We've been waiting for you"
    static let thumbnail = "https://a.thumbs.redditmedia.com/CiP-EY1pCMUrNvo3KbV2hGNS04YlyP60Ghsx72r66l0.jpg"
    static let afterLink = "t3_p3ypyd"
}

struct ControllerTittle {
    static let feedsTittle = "Reddit Feeds"
}
 
struct ViewControllerIds {
    static let feedsStoryBoard = "Feeds"
}

struct CellIds {
   static let feedCell = "cellid"
}

