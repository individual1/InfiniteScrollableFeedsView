//
//  AppDelegate.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var root: RootWireframeInterface?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let dependency = AppDependency.shared
        self.window = UIWindow(frame: UIScreen.main.bounds)
        dependency.attachRootViewControllerInWindow(self.window)
        self.window?.makeKeyAndVisible()
        return true
    }
}

