//
//  FeedsWireframe.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//


import Foundation
import UIKit

class  FeedsWireframe : FeedsWireframeInterface {
   
    var root: RootWireframe?
    var style: WireframeStyle!
    
    required init(root: RootWireframe?) {
        self.root = root
    }
    
    func showFeedsDetailsScreen(from view: FeedsViewInterface, for model: FeedsModel) {
        //Write here code to navigate detail controller view
    }
}
