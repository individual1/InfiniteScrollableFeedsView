//
//  BaseModuleView.swift
//  InfiniteScrollableFeedView
//
//  Created by Bhawna on 13/08/21.
//  Copyright © 2021 Bhawna. All rights reserved.
//

import UIKit
import KRProgressHUD

public protocol BaseModuleView: class {
    
    var controller: UIViewController? { get }
    
    func showHUD()
    func hideHUD()
    func showHUD(withError error:String?)
    func showError(error:String?)
    
    func showHUD(message : String?)
    func updateHUD(message : String)
}

extension BaseModuleView {
    
    func showHUD() {
         KRProgressHUD.show()
    }
    
    func hideHUD() {
         KRProgressHUD.dismiss()
    }
    func showHUD(withError error:String?){
        KRProgressHUD.showMessage(error!)
    }
    
    func showError(error:String?) {
        //optional
    }
    func showHUD(message : String?){
        if let msg = message, msg.count > 0 {
            KRProgressHUD.show(withMessage: msg)
        }else{
            KRProgressHUD.show()
        }
    }
    
    func updateHUD(message : String){
        KRProgressHUD.update(message: message);
    }
}

