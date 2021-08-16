//
//  MyCaseModel.swift
//  DataFlow
//
//  Created by Balachandar on 1/15/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import ObjectMapper

struct FeedsModel {
//    var applicantId: String?
//    var caseId: String?
//    var status: String?
}

extension FeedsModel: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        //applicantId     <- map["applicantId"]
        //caseId          <- map["caseId"]
        //status          <- map["status"]
    }
}
