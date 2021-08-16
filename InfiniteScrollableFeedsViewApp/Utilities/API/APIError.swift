//
//  APIError.swift
//  DataFlow
//
//  Created by Balachandar on 1/9/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import Alamofire

enum APIError: Error {
    case message(String,Int)
    
    var localizedDescription: String {
        switch self {
        case .message(let string, _):
            return string
        }
    }
    var errCode: Int {
        switch self {
        case .message(_, let code):
            return code
        }
    }
}

//MARK:- Error extention

extension Error {
    
    var message: String? {
        if self is AFError {
            return  ERROR_MESSAGE.SERVER_ERROR
        } else if let error = self as? APIError {
            return error.localizedDescription
        } else {
            return self.localizedDescription
        }
    }
    var errorCode: Int? {
        if self is AFError {
            return 900
        } else if let error = self as? APIError {
            return error.errCode
        } else {
            return 999
        }
    }
}
