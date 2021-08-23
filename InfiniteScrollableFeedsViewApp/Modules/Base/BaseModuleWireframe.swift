//
//  RootWireframe.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit

public protocol RootWireframe: class {
    var window: UIWindow! { get set }
}

public enum WireframeStyle {
    case unknown
    case push
    case present
    case attach
    case root
}

public struct WireframeEntryProperty {
    public var animated: Bool = true
    public var controller: UIViewController?
    public var parent: UIViewController?
}

public struct WireframeExitProperty {
    public var controller: UIViewController?
    public var animated: Bool = true
}

public protocol BaseModuleWireframe: class {
    
    var root: RootWireframe? { get set }
    var style: WireframeStyle! { get set }
    init(root: RootWireframe?)
    
}

