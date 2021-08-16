//
//  Endpoints.swift
//  DataFlow
//
//  Created by balachandar on 28/11/2018.
//  Copyright © 2018 DataFlowGroup. All rights reserved.
//

import Foundation

fileprivate struct API {
    
    //Dev
    //static let baseUrl = "http://3.0.231.105:8092/dfg-prod/users"
    // static let baseUrl = "http://3.0.231.105:8090/dfg-dev/users"
    //New Dev Base Url
    // static let baseUrl = "http://172.32.4.156:8090/dfg-dev/users"
    //static let baseUrl = "http://3.0.231.105:8093/dfg-uat/users"
    //static let baseUrl = "http://10.10.0.120:8090/dfg-dev/users"
    // static let baseUrl = "http://10.10.1.192:8090/dfg-dev/users"
    
    // UAT
    //static let baseUrl = "http://3.0.231.105:8093/dfg-uat/users"

    //QA
    //static let baseUrl = "http://3.0.231.105:8091/dfg-qa/users"
    //static let baseUrl = "http://3.0.231.105:8091/dfg-qa/users"
     //static let baseUrl = "http://3.0.231.105:8091/dfg-qa/users"
    
    //Prod
   //  static let baseUrl = "https://dfginteliserv.dfgateway.com/dfg/users"
    //static let baseUrl = "http://10.10.0.58:8092/dfg/users"

    //Beta
    static let baseUrl = "http://www.reddit.com"
    //static let baseUrl = "http://www.reddit.com/.json?after="
   
}

fileprivate protocol Endpoint {
    var path: String { get }
    var url: String { get }
}
    
enum Endpoints {
    enum Feeds: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/.json"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Login: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/login"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    
    enum OTP: Endpoint {
        case fetch
        
        public var path: String {
            switch self {
            case .fetch: return "/sendotp"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum ForgotPassword: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/forgotpassword"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum ValidateOtp: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/validatedotp"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum ValidateUser: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/validateuser"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum ChangePassword: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/changepassword"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum SignOut: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/signout"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum AdhocCaseStatus: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/viewcase"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum CreateCase: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/createcase"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum UpdateCase: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/updatecase?applicantID="
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    
    enum CreateProfile: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/createprofile"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Returnpaymentresponse: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/returnpaymentresponse"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    
    enum ViewProfiles: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/viewprofiles"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Payment: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/payment"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum PaymentReceipt: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getpaymentreceipt?applicantId="
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum DocumentType: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getdocumenttypes"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Gender: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getgender"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Country: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getcountriesdata"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }

    enum PackageDetails: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getpackagedetails"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum getcasesdeatils: Endpoint {
        case fetch
        
        public var path: String {
            switch self {
            case .fetch: return "/getcasesdetails?applicantId="
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum MyCases: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getmycases"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum GetEndorsementLetter: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/getendorsement?applicantId="
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    
    enum Endorsements: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/endorsements"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
    enum SaveEndorsements: Endpoint {
        case fetch
        public var path: String {
            switch self {
            case .fetch: return "/saveendorsement"
            }
        }
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
