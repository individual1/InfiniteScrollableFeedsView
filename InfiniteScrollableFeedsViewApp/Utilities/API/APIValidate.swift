//
//  APIValidate.swift
//  DataFlow
//
//  Created by Balachandar on 1/9/19.
//  Copyright © 2019 DataFlowGroup. All rights reserved.
//

import Foundation
import Alamofire

extension DataRequest {
    
    func apiValidate() -> Self {
        return validate { (request, response, data) -> Request.ValidationResult in
            debugPrint("response.statusCode::::::==== \(response.statusCode)")
            guard let _data = data, !Array(200..<300).contains(response.statusCode) else {
                //To save Auth token
                if let _aData = data {
                    let responseObject = try? JSONSerialization.jsonObject(with: _aData, options: [])
                    if let responseDict = responseObject as? [String: Any]  {
                        debugPrint("responseDict::::::==== \(responseDict)")
                        if let dataDict = responseDict[KEYS.DATA] as? [String: Any] {
                            debugPrint("dataDict::::::==== \(dataDict)")
                        }
                    }
                }
                
                return .success(Void)
            }
            
            let responseObject = try? JSONSerialization.jsonObject(with: _data, options: [])
            debugPrint("responseDict::::::==== \(String(describing: responseObject))")

            guard let responseDict = responseObject as? [String: Any] else {
                return .success
            }
            guard let errorDetails = responseDict[KEYS.ERROR_DETAILS] as? [String: Any] else {
                return .success
            }
        
            guard let errorMessage = errorDetails[KEYS.MESSAGE] as? String else {
                return .success
            }
            var message = ""
            //Api need to be change, need check by error code
            if errorMessage == ERROR_MESSAGE.VALIDATION_FAILED {
                guard let errors = errorDetails[KEYS.FIELD_ERRORS] as? [Any] else {
                    return .success
                }
                guard let errorDict = errors.first as? [String:Any] else {
                    return .success
                }
                
                guard let errorMessage =  errorDict[KEYS.MESSAGE] as? String else {
                    return .success
                }
            
                message = errorMessage
            } else {
                message = errorMessage
            }
            guard let errorCode = errorDetails[KEYS.ERROR_CODE] as? String else {
                return .success
            }
            return .failure(APIError.message(message,Int(errorCode)!))
            }.validate()
    }
}
