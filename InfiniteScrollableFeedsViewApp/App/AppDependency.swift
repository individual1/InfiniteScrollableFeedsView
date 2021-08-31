//
//  AppDependency.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit

class AppDependency {
    static let shared = AppDependency()

    var appWireframe: AppWireframe!

    private init() {
        self.appWireframe = AppWireframe()
    }
    
    func attachRootViewControllerInWindow(_ window: UIWindow!) {
        appWireframe.window = window
        ((UIApplication.shared.delegate) as! AppDelegate).root = appWireframe
        let view = FeedsView()
        let module = FeedsModule(view: view)
        module.build(root:appWireframe)
        
        let nav = UINavigationController(rootViewController:module.view.controller!)
        window.rootViewController = nav
    }
}
