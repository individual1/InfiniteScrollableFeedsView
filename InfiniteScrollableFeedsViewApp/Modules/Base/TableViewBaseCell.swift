//
//  TableViewBaseCell.swift
//  InfiniteScrollableFeedsViewApp
//
//  Created by Bhawna on 23/08/21.
//

import UIKit

class TableViewBaseCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        //cell can be setup here
    }
}
