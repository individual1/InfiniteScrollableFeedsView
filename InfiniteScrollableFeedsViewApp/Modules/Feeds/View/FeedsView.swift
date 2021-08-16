//
//  MyCasesView.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import UIKit

class FeedsView: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    
    var presenter: FeedsPresenterInterface!
    
    fileprivate struct Style {
        static let headerViewId = "TableSectionView"
        static let myCasesCellId = "MyCasesCell"
        static let myProfileEmptyCellId = "MyProfilesEmptyCell"
        
        static let rowHeight = CGFloat(110.0)
        static let topPadding = CGFloat(10.0)
        static let sectionHeight = CGFloat(20.0)
        static let topPaddingEmptyView = CGFloat(40.0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
       // presenter.fetchFeedsList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.red
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setup(){
//        self.title = presenter.navTitle()
//        self.tblView.estimatedRowHeight = Style.rowHeight
//        self.tblView.tableFooterView = UIView()
//        tblView.separatorColor = UIColor.clear
//        tblView.register(UINib(nibName: "TableSectionView", bundle: nil), forHeaderFooterViewReuseIdentifier: Style.headerViewId)
    }
}

/*extension FeedsView : UITableViewDataSource, UITableViewDelegate  {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter?.numberOfSections() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if presenter.emptyFeedsText!.count == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Style.myCasesCellId, for: indexPath) as! FeedsCell
            cell.selectionStyle = .none
            
            if let item = presenter?.item(at: indexPath.section) {
                //cell.configureCell(applicantId: item.applicantId, caseId: item.caseId, status: item.status)
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Style.myProfileEmptyCellId, for: indexPath) as! FeedsCell
            cell.selectionStyle = .none
//            cell.delegate = self
//            
//            if let text = presenter.emptyFeedsText {
//                cell.configureCell(withTitle: text)
//            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // tableView.deselectRow(at: indexPath, animated: true)
        presenter.didSelectItem(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            if presenter.emptyFeedsText?.count == 0 {
                return Style.topPadding + Style.sectionHeight
            } else {
                return Style.topPaddingEmptyView + Style.sectionHeight
            }
        }
        
        return Style.sectionHeight
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: Style.headerViewId) as! TableSectionView
//        header.topConstraint.constant = 0
//        header.bottomConstraint.constant = 0
//        header.titleLbl.text = ""
//        header.layoutIfNeeded()
//        return header
//    }
}*/
//extension FeedsView : FeedsEmptyCellDelegate {
//    func onClickCreateProfile() {
//        presenter.back()
//    }
//}
extension FeedsView : FeedsViewInterface {
    var controller: UIViewController? {
        return self
    }
    
    func reloadData() {
       // self.tblView.reloadData()
    }
}
