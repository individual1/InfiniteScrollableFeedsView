//
//  RootWireframe.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit

public protocol RootWireframe: class {
    var window: UIWindow! { set get }
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
    
    var root: RootWireframe? { set get }
    var style: WireframeStyle! { set get }
    init(root: RootWireframe?)
    
//    func enter(with property: WireframeEntryProperty)
//    func exit(with property: WireframeExitProperty)
//
//    func showLoginScreen(from viewController: UIViewController?)
//    func showLogoutScreen(from viewController: UIViewController?)
//    func showError(error:String?, from viewController: UIViewController?)
//
//    func push(viewController: UIViewController?, from sourceViewController: UIViewController?)
//    func attachRoot(viewController: UIViewController?, from sourceViewController: UIViewController?)
//    func present(viewController: UIViewController?, from sourceViewController: UIViewController?)
//    func pop(viewController: UIViewController?)
//    func dismiss(viewController: UIViewController?)

}



//extension BaseModuleWireframe {
//  
//    public func enter(with property: WireframeEntryProperty) {
//        guard let controller = property.controller,
//            let parent = property.parent else {
//                return
//        }
//        
//        switch style! {
//        case .push where parent.navigationController != nil:
//            parent.navigationController!.pushViewController(controller, animated: property.animated)
//            
//        case .present:
//            parent.present(controller, animated: property.animated, completion: nil)
//            
//        case .attach:
//            parent.view.addSubview(controller.view)
//            parent.addChild(controller)
//            controller.didMove(toParent: parent)
//        case .root where root != nil:
//            root!.window.rootViewController = controller
//        default:
//            break
//        }
//    }
//    
//    
//    
//    public func exit(with property: WireframeExitProperty) {
//        guard let controller = property.controller else {
//            return
//        }
//        switch style! {
//        case .push where controller.navigationController != nil:
//            let _ = controller.navigationController!.popViewController(animated: property.animated)
//        case .present:
//            controller.dismiss(animated: property.animated, completion: nil)
//        case .attach where controller.parent != nil:
//            
//            controller.view.removeFromSuperview()
//            controller.removeFromParent()
//            controller.didMove(toParent: nil)
//            
//        default:
//            break
//        }
//    }
//    
//    func showLoginScreen(from viewController: UIViewController?) {
//       
//    }
//    
//    func showLogoutScreen(from viewController: UIViewController?) {
//        
//    }
//    
//    func showError(error:String?, from viewController: UIViewController?) {
////        guard let err = error else {
////            return
////        }
////        if err == ERROR_MESSAGE.SESSION_EXPIRED || err == ERROR_MESSAGE.UNAUTHORIZED{
////            viewController?.showAlert(with: KEYS.APPNAME, message: err, actions: [.okAction(handler: {[weak self](action) in
////                self?.showLoginScreen(from: viewController)
////            })])
////        } else {
////            viewController?.showAlert(with: KEYS.APPNAME, message: err)
// //       }
//    }
//    
//    func push(viewController: UIViewController?, from sourceViewController: UIViewController?) {
//        
//        guard let vc = viewController else {
//            return
//        }
//        
//        guard let sourceVC = sourceViewController else {
//            return
//        }
//        
//        var property = WireframeEntryProperty()
//        property.controller = vc
//        property.parent = sourceVC
//        
//        self.style = .push
//        self.enter(with: property)
//    }
//    
//    func attachRoot(viewController: UIViewController?, from sourceViewController: UIViewController?) {
//        
//        guard let vc = viewController else {
//            return
//        }
//        
//        guard let sourceVC = sourceViewController else {
//            return
//        }
//        
//        var property = WireframeEntryProperty()
//        property.controller = vc
//        property.parent = sourceVC
//        self.style = .root
//        self.enter(with: property)
//    }
//
//    func present(viewController: UIViewController?, from sourceViewController: UIViewController?) {
//        
//        guard let vc = viewController else {
//            return
//        }
//        
//        guard let sourceVC = sourceViewController else {
//            return
//        }
//        
//        var property = WireframeEntryProperty()
//        property.controller = vc
//        property.parent = sourceVC.parent
//        self.style = .present
//        self.enter(with: property)
//        
//    }
//    func pop(viewController: UIViewController?) {
//        if self.style == nil {
//            self.style = .push
//        }
//        guard let vc = viewController else {
//            return
//        }
//        var property = WireframeExitProperty()
//        property.controller = vc
//        self.exit(with: property)
//    }
//    func dismiss(viewController: UIViewController?) {
//        if self.style == nil {
//            self.style = .present
//        }
//        guard let vc = viewController else {
//            return
//        }
//        var property = WireframeExitProperty()
//        property.controller = vc
//        self.exit(with: property)
//    }
//}

