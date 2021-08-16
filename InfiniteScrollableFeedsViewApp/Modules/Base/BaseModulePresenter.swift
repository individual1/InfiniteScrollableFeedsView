//
//  BaseModulePresenter.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

public protocol BaseModulePresenter: class {
 
    func viewDidLoad()
    func viewWillAppear(animated: Bool)
    func viewDidAppear(animated: Bool)
    func viewWillDisappear(animated: Bool)
    func viewDidDisappear(animated: Bool)
    
    func navTitle() -> String
    func presentLogin()
}

extension BaseModulePresenter {
    
    func viewDidLoad() {
       // fatalError("Implementation pending...")
    }
    
    func viewWillAppear(animated: Bool) {
       // fatalError("Implementation pending...")
    }
    
    func viewDidAppear(animated: Bool) {
        //fatalError("Implementation pending...")
    }
    
    func viewWillDisappear(animated: Bool) {
        //fatalError("Implementation pending...")
    }
    
    func viewDidDisappear(animated: Bool) {
        //fatalError("Implementation pending...")
    }
    func presentLogin() {
        //fatalError("Implementation pending...")
    }

}

