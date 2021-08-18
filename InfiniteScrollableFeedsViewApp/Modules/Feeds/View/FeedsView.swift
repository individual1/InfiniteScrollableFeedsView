//
//  FeedsView.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import Foundation
import UIKit

class FeedsView: UIViewController, UITableViewDataSourcePrefetching {
    
    private var afterLink = ""
    private enum CellIdentifiers {
        static let id = "cellid"
    }
    
    var tblView : UITableView = {
        var tableView = UITableView()
        return tableView
    }()
    var presenter: FeedsPresenterInterface!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        presenter.fetchFeedsList(afterLink: afterLink)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.white
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func setup(){
        tblView = UITableView(frame: CGRect.zero, style: .grouped)
        self.view.addSubview(tblView)
        tblView.fillSuperview()
        tblView.backgroundColor = UIColor(red: 236/255.0, green: 238/255.0, blue: 240/255.0, alpha: 1.0)
        tblView.register(FeedsCell.self, forCellReuseIdentifier: CellIdentifiers.id)
        tblView.isHidden = true
        tblView.dataSource = self
        tblView.delegate = self
        tblView.estimatedRowHeight = 600
        tblView.separatorStyle = .none
        tblView.rowHeight = UITableView.automaticDimension
        tblView.prefetchDataSource = self
    }
    
    var lastContentOffset: CGFloat = 0

}

// MARK: - UITableViewDataSource, UITableViewDelegate 
extension FeedsView : UITableViewDataSource, UITableViewDelegate  {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter?.numberOfSections() ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.id, for: indexPath) as! FeedsCell
            cell.selectionStyle = .none
        if isLoadingCell(for: indexPath) {
           //TODO
        } else {
            if let item = presenter?.item(at: indexPath.section) {
                self.afterLink = item.afterLink ?? ""
                cell.configureCell(imgageUrlStr: item.thumbnail, feedTittle: item.title, feedNoofComments: item.num_comments, feedScore: item.score, thumbnailWidth: item.thumbnailWidth ?? 0, thumbnailHeight: item.thumbnailHeight ?? 0)
            }
        }
            return cell
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectItem(at: indexPath)
    }
     
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        if indexPaths.contains(where: isLoadingCell) {
            presenter.fetchFeedsList(afterLink: afterLink)
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // need to pass your indexpath then it showing your indicator at bottom
        tableView.addLoading(indexPath) {
            // add your code here
            // append Your array and reload your tableview
           // self.tblView.reloadData()
            tableView.stopLoading() // stop your indicator
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if(section == 0){
            return UIView()
        }
        else{
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 20))
        view.backgroundColor = UIColor(red: 236/255.0, green: 238/255.0, blue: 240/255.0, alpha: 1.0)
        return view
        }
    }
}

extension FeedsView : FeedsViewInterface {
    var controller: UIViewController? {
        return self
    }
    
    func reloadData() {
        tblView.isHidden = false
        self.tblView.reloadData()
      
    }
}

internal extension FeedsView {
    func isLoadingCell(for indexPath: IndexPath) -> Bool {
        return indexPath.section == ((presenter?.numberOfSections())! - 5)
    }

    func visibleIndexPathsToReload(intersecting indexPaths: [IndexPath]) -> [IndexPath] {
        let indexPathsForVisibleRows = tblView.indexPathsForVisibleRows ?? []
        let indexPathsIntersection = Set(indexPathsForVisibleRows).intersection(indexPaths)
        return Array(indexPathsIntersection)
    }
}
