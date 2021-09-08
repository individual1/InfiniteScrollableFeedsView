//
//  FeedsView.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 14/08/21.
//

import UIKit

class FeedsView: UIViewController, UITableViewDataSourcePrefetching {
    
    private var afterLink = ""
    private enum CellIdentifiers {
        static let id = "cellid"
    }
    
    var tblView: UITableView = {
        var tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.backgroundColor = UIColor(red: 236/255.0, green: 238/255.0, blue: 240/255.0, alpha: 1.0)
        tableView.isHidden = true
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(FeedsCell.self, forCellReuseIdentifier: CellIdentifiers.id)
        return tableView
    }()
    
    var presenter: FeedsPresenterInterface!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        self.title = presenter.navTitle()
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
        self.view.addSubview(tblView)
        tblView.fillSuperview()
        tblView.dataSource = self
        tblView.delegate = self
        tblView.prefetchDataSource = self
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate 
extension FeedsView: UITableViewDataSource, UITableViewDelegate  {
    
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
            //To Do
        } else if let item = presenter?.item(at: indexPath) {
            self.afterLink = item.afterLink ?? ""
            let feedsModel = FeedsModel(thumbnail: item.thumbnail,
                                        title: item.title,
                                        num_comments: item.num_comments,
                                        score: item.score,
                                        afterLink: self.afterLink,
                                        thumbnailWidth: item.thumbnailWidth,
                                        thumbnailHeight: item.thumbnailHeight)
            cell.configureCell(feedsItem: feedsModel)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath]) {
        if indexPaths.contains(where: isLoadingCell) {
            presenter.fetchFeedsList(afterLink: afterLink)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return UIView()
        } else {
            let view = UIView.init(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 20))
            view.backgroundColor = UIColor.rgb(236, green: 238, blue: 240)
            return view
        }
    }
}

extension FeedsView: FeedsViewInterface {
    var controller: UIViewController? {
        return self
    }
    
    func reloadData() {
        tblView.isHidden = false
        self.tblView.reloadData()
    }
}

extension FeedsView {
    func isLoadingCell(for indexPath: IndexPath) -> Bool {
        return indexPath.section == ((presenter?.numberOfSections())! - 1)
    }
}
