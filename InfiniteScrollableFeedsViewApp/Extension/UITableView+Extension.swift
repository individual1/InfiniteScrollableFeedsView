//
//  UITableView+Extension.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit

extension UITableView {

    func indicatorView() -> UIActivityIndicatorView{
         var activityIndicatorView = UIActivityIndicatorView()
         guard let _ = self.tableFooterView else { return activityIndicatorView }
        
         let indicatorFrame = CGRect(x: 0, y: 0, width: self.bounds.width, height: 80)
         activityIndicatorView = UIActivityIndicatorView(frame: indicatorFrame)
         activityIndicatorView.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin]
         activityIndicatorView.style = .large
         activityIndicatorView.color = .red
         activityIndicatorView.hidesWhenStopped = true
         self.tableFooterView = activityIndicatorView
        
         return activityIndicatorView
    }

    func addLoading(_ indexPath:IndexPath, closure: @escaping (() -> Void)){
         indicatorView().startAnimating()
         if let lastVisibleIndexPath = self.indexPathsForVisibleRows?.last {
             if indexPath == lastVisibleIndexPath && indexPath.row == self.numberOfRows(inSection: 0) - 1 {
                 DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                  closure()
                 }
             }
         }
    }

    func stopLoading() {
         if self.tableFooterView != nil {
             self.indicatorView().stopAnimating()
             self.tableFooterView = nil
         }
    }
}
