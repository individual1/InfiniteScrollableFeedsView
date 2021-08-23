//
//  RootWireframeInterface.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit

public protocol RootWireframeInterface {
    var window: UIWindow! { get set }
    func showRoot(with viewController: UIViewController, in window: UIWindow)
}
