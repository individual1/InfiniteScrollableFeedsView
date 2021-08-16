//
//  MyCasesCell.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import UIKit

class FeedsCell: UITableViewCell {
    @IBOutlet weak var caseIdLbl: UILabel!
    @IBOutlet weak var applicantIdLbl:UILabel!
    @IBOutlet weak var statusLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(applicantId:String?,caseId:String?,status:String?) {
        caseIdLbl.text = caseId ?? ""
        applicantIdLbl.text = applicantId ?? ""
        statusLbl.text = status ?? ""
        guard let statusStr = status else { return }
        if (statusStr.lowercased().contains("successful") || statusStr.lowercased().contains("paid")) {
           //statusLbl.textColor = UIColor.appPositiveColor
        } else if (statusStr.lowercased().contains("pending")) {
            //statusLbl.textColor = UIColor.appWithHoldColor
        } else {
           // statusLbl.textColor = UIColor.appNegativeColor
        }
    }

}
