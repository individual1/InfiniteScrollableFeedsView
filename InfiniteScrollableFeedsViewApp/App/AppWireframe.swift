//
//  AppWireframe.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit

class AppWireframe: RootWireframeInterface, RootWireframe  {
    var window: UIWindow!

    func showRoot(with viewController: UIViewController, in window: UIWindow) {
        self.window = window
        let nav = UINavigationController(rootViewController: viewController)
        window.rootViewController = nav
    }
}
