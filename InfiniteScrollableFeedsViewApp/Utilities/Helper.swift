//
//  Helper.swift
//  DataFlow
//
//  Created by balachandar on 27/11/2018.
//  Copyright © 2018 DataFlowGroup. All rights reserved.
//

import UIKit
import AVFoundation
import Alamofire
import Foundation

class Helper :NSObject{
//    class func getCountryPhonceCode (country : String) -> String
//    {
//        
//        if country.length() == 2
//        {
//            let x : [String] = ["972", "IL",
//                                "93" , "AF",
//                                "355", "AL",
//                                "213", "DZ",
//                                "1"  , "AS",
//                                "376", "AD",
//                                "244", "AO",
//                                "1"  , "AI",
//                                "1"  , "AG",
//                                "54" , "AR",
//                                "374", "AM",
//                                "297", "AW",
//                                "61" , "AU",
//                                "43" , "AT",
//                                "994", "AZ",
//                                "1"  , "BS",
//                                "973", "BH",
//                                "880", "BD",
//                                "1"  , "BB",
//                                "375", "BY",
//                                "32" , "BE",
//                                "501", "BZ",
//                                "229", "BJ",
//                                "1"  , "BM",
//                                "975", "BT",
//                                "387", "BA",
//                                "267", "BW",
//                                "55" , "BR",
//                                "246", "IO",
//                                "359", "BG",
//                                "226", "BF",
//                                "257", "BI",
//                                "855", "KH",
//                                "237", "CM",
//                                "1"  , "CA",
//                                "238", "CV",
//                                "345", "KY",
//                                "236", "CF",
//                                "235", "TD",
//                                "56", "CL",
//                                "86", "CN",
//                                "61", "CX",
//                                "57", "CO",
//                                "269", "KM",
//                                "242", "CG",
//                                "682", "CK",
//                                "506", "CR",
//                                "385", "HR",
//                                "53" , "CU" ,
//                                "537", "CY",
//                                "420", "CZ",
//                                "45" , "DK" ,
//                                "253", "DJ",
//                                "1"  , "DM",
//                                "1"  , "DO",
//                                "593", "EC",
//                                "20" , "EG" ,
//                                "503", "SV",
//                                "240", "GQ",
//                                "291", "ER",
//                                "372", "EE",
//                                "251", "ET",
//                                "298", "FO",
//                                "679", "FJ",
//                                "358", "FI",
//                                "33" , "FR",
//                                "594", "GF",
//                                "689", "PF",
//                                "241", "GA",
//                                "220", "GM",
//                                "995", "GE",
//                                "49" , "DE",
//                                "233", "GH",
//                                "350", "GI",
//                                "30" , "GR",
//                                "299", "GL",
//                                "1"  , "GD",
//                                "590", "GP",
//                                "1"  , "GU",
//                                "502", "GT",
//                                "224", "GN",
//                                "245", "GW",
//                                "595", "GY",
//                                "509", "HT",
//                                "504", "HN",
//                                "36" , "HU",
//                                "354", "IS",
//                                "91" , "IN",
//                                "62" , "ID",
//                                "964", "IQ",
//                                "353", "IE",
//                                "972", "IL",
//                                "39" , "IT",
//                                "1"  , "JM",
//                                "81", "JP", "962", "JO", "77", "KZ",
//                                "254", "KE", "686", "KI", "965", "KW", "996", "KG",
//                                "371", "LV", "961", "LB", "266", "LS", "231", "LR",
//                                "423", "LI", "370", "LT", "352", "LU", "261", "MG",
//                                "265", "MW", "60", "MY", "960", "MV", "223", "ML",
//                                "356", "MT", "692", "MH", "596", "MQ", "222", "MR",
//                                "230", "MU", "262", "YT", "52","MX", "377", "MC",
//                                "976", "MN", "382", "ME", "1", "MS", "212", "MA",
//                                "95", "MM", "264", "NA", "674", "NR", "977", "NP",
//                                "31", "NL", "599", "AN", "687", "NC", "64", "NZ",
//                                "505", "NI", "227", "NE", "234", "NG", "683", "NU",
//                                "672", "NF", "1", "MP", "47", "NO", "968", "OM",
//                                "92", "PK", "680", "PW", "507", "PA", "675", "PG",
//                                "595", "PY", "51", "PE", "63", "PH", "48", "PL",
//                                "351", "PT", "1", "PR", "974", "QA", "40", "RO",
//                                "250", "RW", "685", "WS", "378", "SM", "966", "SA",
//                                "221", "SN", "381", "RS", "248", "SC", "232", "SL",
//                                "65", "SG", "421", "SK", "386", "SI", "677", "SB",
//                                "27", "ZA", "500", "GS", "34", "ES", "94", "LK",
//                                "249", "SD", "597", "SR", "268", "SZ", "46", "SE",
//                                "41", "CH", "992", "TJ", "66", "TH", "228", "TG",
//                                "690", "TK", "676", "TO", "1", "TT", "216", "TN",
//                                "90", "TR", "993", "TM", "1", "TC", "688", "TV",
//                                "256", "UG", "380", "UA", "971", "AE", "44", "GB",
//                                "1", "US", "598", "UY", "998", "UZ", "678", "VU",
//                                "681", "WF", "967", "YE", "260", "ZM", "263", "ZW",
//                                "591", "BO", "673", "BN", "61", "CC", "243", "CD",
//                                "225", "CI", "500", "FK", "44", "GG", "379", "VA",
//                                "852", "HK", "98", "IR", "44", "IM", "44", "JE",
//                                "850", "KP", "82", "KR", "856", "LA", "218", "LY",
//                                "853", "MO", "389", "MK", "691", "FM", "373", "MD",
//                                "258", "MZ", "970", "PS", "872", "PN", "262", "RE",
//                                "7", "RU", "590", "BL", "290", "SH", "1", "KN",
//                                "1", "LC", "590", "MF", "508", "PM", "1", "VC",
//                                "239", "ST", "252", "SO", "47", "SJ",
//                                "963","SY",
//                                "886",
//                                "TW", "255",
//                                "TZ", "670",
//                                "TL","58",
//                                "VE","84",
//                                "VN",
//                                "284", "VG",
//                                "340", "VI",
//                                "678","VU",
//                                "681","WF",
//                                "685","WS",
//                                "967","YE",
//                                "262","YT",
//                                "27","ZA",
//                                "260","ZM",
//                                "263","ZW"]
//            var keys = [String]()
//            var values = [String]()
//            let whitespace = NSCharacterSet.decimalDigits
//            
//            //let range = phrase.rangeOfCharacterFromSet(whitespace)
//            for i in x {
//                // range will be nil if no whitespace is found
//                if  (i.rangeOfCharacter(from: whitespace) != nil) {
//                    values.append(i)
//                }
//                else {
//                    keys.append(i)
//                }
//            }
//            let countryCodeListDict = NSDictionary(objects: values as [String], forKeys: keys as [String] as [NSCopying])
//            if let t: AnyObject = countryCodeListDict.value(forKey: country) as AnyObject {
//                return countryCodeListDict[country] as! String
//            } else
//            {
//                return ""
//            }
//        }
//        else
//        {
//            return ""
//        }
//    }
    
//    class func getEncryptedParams(plainParams:RequestParams) -> RequestParams {
//        var aesEncryptData: String?
//        aesEncryptData = plainParams.dictionary.json.aesEncrypt(AES_KEY: CONSTANT.AES_KEY)
//        if (aesEncryptData == nil || aesEncryptData == "" ) {
//            debugPrint("Error while encrypting")
//        }
//        debugPrint("======================Params========================")
//        debugPrint(plainParams.dictionary.printJson())
//        debugPrint("=======================End==========================")
//
//        var rsaEncryptedKeyText: String?
//        let encryptedKey = RSAUtils.encryptWithRSAPublicKey(CONSTANT.AES_KEY.data(using: String.Encoding.utf8)!, pubkeyBase64: CONSTANT.RSA_PUBLIC_KEY, keychainTag: CONSTANT.TAG_PUBLIC_KEY)
//        if (encryptedKey == nil ) {
//            debugPrint("Error while encrypting")
//        } else {
//            rsaEncryptedKeyText = encryptedKey!.base64EncodedString(options: NSData.Base64EncodingOptions())
//            //debugPrint("Encrypted with pubkey: %@", rsaEncryptedKeyText ?? "")
//        }
//
//        var encryptedParams = EncryptedParams()
//        encryptedParams.data = aesEncryptData
//        encryptedParams.key = rsaEncryptedKeyText
//        debugPrint("===============Encrypted Request=====================")
//        debugPrint(encryptedParams.dictionary.printJson())
//        debugPrint("========================End===========================")
//        return encryptedParams
//    }
    
  class  func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }

    
    class func headers() -> HTTPHeaders {
        var headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "Accept": "application/json"
        ]
        
        if let authToken = UserDefaultHelper.getAuthToken() {
            debugPrint("Sent authToken ====== \(authToken)")
            headers["Authorization"] = "Bearer" + " " + authToken
        }
        
        return headers
    }
//    class func queryStringFromParameters(parameters: Dictionary<String,String>) -> String? {
//        if (parameters.count == 0)
//        {
//            return nil
//        }
//        var queryString : String? = nil
//        for (key, value) in parameters {
//            if let encodedKey = key.stringByPercentEncoding() {
//                if let encodedValue = value.stringByPercentEncoding() {
//                    if queryString == nil
//                    {
//                        queryString = "?"
//                    }
//                    else
//                    {
//                        queryString! += "&"
//                    }
//                    queryString! += encodedKey + "=" + encodedValue
//                }
//            }
//        }
//        return queryString
//    }
//
    class func checkForMaxLength(maxLength:Int,stringInField:NSString,range: NSRange,replacementString: String)-> Bool{
        let newString: NSString =
            stringInField.replacingCharacters(in: range, with: replacementString) as NSString
        let isMax = newString.length <= maxLength
        return isMax
    }
    
    class func checkForAllowedCharsInTxtField(range: NSRange,replacementString: String)-> Bool{
        if replacementString.count > 0 {
            let disallowedCharacterSet = NSCharacterSet(charactersIn: CONSTANT.ALLOWED_CHARS).inverted
            let replacementStringIsLegal = replacementString.rangeOfCharacter(from: disallowedCharacterSet) == nil
            return replacementStringIsLegal
        }
        return true
    }
 
    class func checkForAllowedAlphaNumericCharacterSetWithSpecificSymbols(in string:String) -> Bool {
        if string.count > 0 {
            var alphanumericCharacterSet = CharacterSet(charactersIn: CONSTANT.ALLOWED_CHARS_PASSWORD)
            alphanumericCharacterSet.formUnion(CharacterSet.whitespaces)
            
            //let myStringSet = CharacterSet(charactersIn: self)
            let myStringSet = CharacterSet(charactersIn: string)
            
            return alphanumericCharacterSet.isSuperset(of: myStringSet)
        } else {
            return true
        }
    }
    
    
    class func openMediaOptions(imagePicker: UIImagePickerController?,viewController:UIViewController,sender:UIButton,topTitle:String = "Add Document"){ //"Add Photo"
        let alert = UIAlertController(title: topTitle, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Capture Image", style: .default, handler: { _ in
            Helper.openCamera(imagePicker: imagePicker,viewController:viewController)
        })) //"Open Camera"to "Capture Image" Changed as disscuss with Nidhi
        
        alert.addAction(UIAlertAction(title: "Choose from Gallery", style: .default, handler: { _ in
            Helper.openGallary(imagePicker: imagePicker, viewController: viewController)
        }))
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        
        /*If you want work actionsheet on ipad
         then you have to use popoverPresentationController to present the actionsheet,
         otherwise app will crash on iPad */
        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            alert.popoverPresentationController?.sourceView = sender
            alert.popoverPresentationController?.sourceRect = sender.bounds
            alert.popoverPresentationController?.permittedArrowDirections = .up
        default:
            break
        }
        viewController.present(alert, animated: true, completion: nil)
    }
    
    fileprivate class func openCamera(imagePicker: UIImagePickerController?,viewController:UIViewController)
    {
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera))
        {
//            imagePicker?.sourceType = UIImagePickerController.SourceType.camera
//            imagePicker?.allowsEditing = true
//            viewController.present((imagePicker)!, animated: true, completion: nil)
            
            let cameraAuthorizationStatus = AVCaptureDevice.authorizationStatus(for: .video)
            
            switch cameraAuthorizationStatus {
            case .notDetermined: requestCameraPermission(imagePicker: imagePicker, viewController: viewController)
            case .authorized: presentCamera(imagePicker: imagePicker, viewController: viewController)
            case .restricted, .denied: alertCameraAccessNeeded(viewController: viewController)
            }
        }
        else
        {
            let alert  = UIAlertController(title: ALERT_TITLE.WARNING, message: GENERAL_MESSAGE.DONT_HAVE_CAMERA, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: ALERT_TITLE.OK, style: .default, handler: nil))
            viewController.present(alert, animated: true, completion: nil)
        }
    }
    
    fileprivate class func requestCameraPermission(imagePicker: UIImagePickerController?,viewController:UIViewController) {
        AVCaptureDevice.requestAccess(for: .video, completionHandler: {accessGranted in
            guard accessGranted == true else { return }
            DispatchQueue.main.async{
                self.presentCamera(imagePicker: imagePicker, viewController: viewController)
            }
        })
    }
    fileprivate class func presentCamera(imagePicker: UIImagePickerController?,viewController:UIViewController) {
        
        imagePicker?.sourceType = UIImagePickerController.SourceType.camera
        imagePicker?.allowsEditing = false
        viewController.present((imagePicker)!, animated: true, completion: nil)
    }
    class func alertCameraAccessNeeded(viewController:UIViewController) {
        let settingsAppURL = URL(string: UIApplication.openSettingsURLString)!
        
        let alert = UIAlertController(
            title: GENERAL_MESSAGE.CAMERA_ACCESS_TITLE,
            message: GENERAL_MESSAGE.CAMERA_ACCESS_MESSAGE,
            preferredStyle: UIAlertController.Style.alert
        )
        
        alert.addAction(UIAlertAction(title: ALERT_TITLE.CANCEL, style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: ALERT_TITLE.ALLOW_CAMERA, style: .cancel, handler: { (alert) -> Void in
            UIApplication.shared.open(settingsAppURL, options: [:], completionHandler: nil)
        }))
        
        viewController.present(alert, animated: true, completion: nil)
    }
    

    fileprivate class func openGallary(imagePicker: UIImagePickerController?,viewController:UIViewController)
    {
        imagePicker?.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagePicker?.allowsEditing = false
        viewController.present(imagePicker!, animated: true, completion: nil)
    }
    
    class func isLoggedIn() -> Bool {
        if let _ = UserDefaultHelper.getAuthToken() {
            return true
        } else {
             return false
        }
    }
    
     class  func paymentDate()->String?{
       let date = Date()
       let formatter = DateFormatter()
       formatter.dateFormat = FORMATTER.DATE_FORMATTER
       formatter.amSymbol = "AM"
       formatter.pmSymbol = "PM"
       let datePayment = formatter.string(from: date)
    return datePayment
    }
    
//    class  func transactionCode(stringCode:String?)->String!{
//        let code = stringCode?.slice(from: "vpc_TxnResponseCode=", to: "&vpc_VerSecurityLevel=")
//        return code ?? "9"
//    }
//    class  func transactionStatus(stringCode:String?)->String?{
//        let paymentStatus = stringCode?.slice(from: "&vpc_Message=", to: "&vpc_OrderInfo")
//        return paymentStatus
//    }
//
//    class  func transactionRefId(stringCode:String?)->String?{
//      let paymentReferenceId = stringCode?.slice(from: "&vpc_TransactionNo=", to: "&vpc_TxnResponseCode")
//        return paymentReferenceId
//    }
//
    //price calucation on app end on the basis of selected category and application type
  class  func priceCalculation(selecteCategory:String?,selectedApplicationType:String?,category:Array<Any>,applicationTypeArray:Array<Any>)->(String?,String?){
        var indexPOfNew = 4
        var indexPOfRenew = 5
        var indexPOffresh = 3
        var indexPOfAdditional = 0
        var indexPOfAdditionalNew = 1
        var indexPOfAdditionalReNew = 2
        var indexPOfPhysician = 0
        var indexPOfNonPhysician = 1
        var additionalPerDocPrice = ""
        let arrayTempCate = NSMutableArray.init(array: category)
        let arrayTempApplicationType = NSMutableArray.init(array: applicationTypeArray)
        
        if(arrayTempCate.count == 5){
            indexPOfNew = arrayTempCate.index(of: CATEGORY_NAME.NEW)
            indexPOfRenew = arrayTempCate.index(of: CATEGORY_NAME.RENEW)
            indexPOffresh = arrayTempCate.index(of: CATEGORY_NAME.FRESHER)
            indexPOfAdditional = arrayTempCate.index(of: CATEGORY_NAME.ADDITIONAL)
            indexPOfAdditionalNew = arrayTempCate.index(of: CATEGORY_NAME.ADDITIONAL_NEW)
            indexPOfAdditionalReNew = arrayTempCate.index(of: CATEGORY_NAME.ADDITIONAL_RENEW)
        }
        if(arrayTempApplicationType.count == 2){
            indexPOfPhysician = arrayTempApplicationType.index(of: APPLICATION_TYPE.PHYSICAN)
            indexPOfNonPhysician = arrayTempApplicationType.index(of: APPLICATION_TYPE.NONPHYSICIAN)
        }
        if(selecteCategory == category[indexPOfNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.NEW_PHYSICIAN_ADDITIONAL_PRICE
            //priceLbl.text = PRICE.NEW_PHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.NEW_PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.NEW_NONPHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.NEW_NONPHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.NEW_NONPHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOffresh] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.FRESHER_PHYSICIAN_ADDITIONAL_PRICE
          //  priceLbl.text = PRICE.FRESHER_PHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.FRESHER_PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOffresh] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.FRESHER_NONPHYSICIAN_ADDITIONAL_PRICE
            //priceLbl.text = PRICE.FRESHER_NONPHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.FRESHER_NONPHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfRenew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.RENEW_PHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.RENEW_PHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.RENEW_PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfRenew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.RENEW_NONPHYSICIAN_ADDITIONAL_PRICE
          //  priceLbl.text = PRICE.RENEW_NONPHYSICIAN_PRICE
             return ( additionalPerDocPrice, PRICE.RENEW_NONPHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditional] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_PHYSICIAN_ADDITIONAL_PRICE
          //  priceLbl.text = PRICE.ADDITIONAL_PHYSICIAN_PRICE
             return ( additionalPerDocPrice, PRICE.ADDITIONAL_PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditional] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_NONPHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.ADDITIONAL_NONPHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.ADDITIONAL_NONPHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditionalNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_NEW__PHYSICIAN_ADDITIONAL_PRICE
            //priceLbl.text = PRICE.ADDITIONAL_NEW__PHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.ADDITIONAL_NEW__PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditionalNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_NEW_NONPHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.ADDITIONAL_NEW_NONPHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.ADDITIONAL_NEW_NONPHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditionalReNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_RENEW__PHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.ADDITIONAL_RENEW__PHYSICIAN_PRICE
            return ( additionalPerDocPrice, PRICE.ADDITIONAL_RENEW__PHYSICIAN_PRICE)
        }
        else if(selecteCategory == category[indexPOfAdditionalReNew] as? String &&  selectedApplicationType == applicationTypeArray[indexPOfNonPhysician] as? String){
            additionalPerDocPrice = ADDITIONAL_PRICE.ADDITIONAL_RENEW_NONPHYSICIAN_ADDITIONAL_PRICE
           // priceLbl.text = PRICE.ADDITIONAL_RENEW_NONPHYSICIAN_PRICE
             return ( additionalPerDocPrice, PRICE.ADDITIONAL_RENEW_NONPHYSICIAN_PRICE)
        }
        return ("","")
    }
    class func roundToPlaces(_ value: Double, places: Int, rule: FloatingPointRoundingRule = .toNearestOrAwayFromZero) -> Double {
        let divisor = pow(10.0, Double(places))
        return (value * divisor).rounded(rule) / divisor
    }
    
    //to multiple upload documents scroller
    
 /* class  func addMultipleDocForEducation(imageTempId:String!,cell:CreateCaseCell!,docArray:[UploadDocsModel?])->[UploadDocsModel?]{
        var docTempArray = [UploadDocsModel?]()
        docTempArray = docArray
        var uploadImageModel = UploadDocsModel.init(imageId:  (imageTempId ?? ""), imageUpload:  cell?.choosedImage.image ?? nil)
        if(imageTempId == "" && docArray.count == 1){
            uploadImageModel.imageId = docArray[0]?.imageId ?? ""
        }
        else if(docArray.count > 1 && imageTempId != "" && imageTempId != nil){
            var count:Int = 0
            for uploadedDoc in docArray{
                count = count+1
                if uploadedDoc?.imageId == "" {
                    if let uploadedDocImage = docArray[count-1]?.imageUpload{
                        let uploadImageHealthModel = UploadDocsModel.init(imageId:imageTempId!, imageUpload:uploadedDocImage)
                        docTempArray[count-1] = uploadImageHealthModel
                        
                    }
                }
            }
            debugPrint("uploaded emp doc:\(docArray)")
        }
        if(uploadImageModel.imageUpload != nil){
            docTempArray.append(uploadImageModel)
        }
        if (docArray.count == 0){
            cell.docCountLbl.text = ""
        }
        else if(docArray.count == 1){
            let documentTypesDict = docArray[0]
            if (documentTypesDict?.imageUpload != nil ){
                cell.docCountLbl.text = String(docArray.count)+CHECKMSG.oneDocMsg
            }
        }
        else if(docArray.count > 1){
            cell.docCountLbl.text = String(docArray.count)+CHECKMSG.multipleDocMsg
        }
        return docTempArray
        // tblViewCreateCase.reloadData()
    }*/
    
    class func pickerLbl(view:UIView)->UILabel{
    var pickerLabel = view as? UILabel
    
    if (pickerLabel == nil)
    {
    pickerLabel = UILabel()
    pickerLabel?.font = UIFont(name: AppFontRegular, size: 20)
    pickerLabel?.textAlignment = NSTextAlignment.center
        
    }
        return pickerLabel!
    }
   
    class func priceForLabel(price:String?)->String?{
        var newPrice = ""
        if(price?.contains(" SAR") == true){
            var rightItem = price
            rightItem  = rightItem?.replacingOccurrences(of: " SAR", with: "")
            newPrice = rightItem! + ".00 SAR"
            
        }
        return newPrice
    }
    
    
    class func mobile(number:String?,withISDCode isdCode:String?) -> String {
        guard let _isdCode = isdCode else {
            return ""
        }
        
        guard let _number = number else {
            return ""
        }
       
        return "+"+_isdCode+_number
    }
}


