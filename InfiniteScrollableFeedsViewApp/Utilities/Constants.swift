//
//  Constants.swift
//  DataFlow
//
//  Created by balachandar on 22/11/2018.
//  Copyright © 2018 DataFlowGroup. All rights reserved.
//


import UIKit
import CoreLocation

struct URLS {
   
    static let BASE_URL = "http://3.0.231.105:8090/dfg-dev/users"
   // static let BASE_URL = "http://10.10.0.58:8090/dfg-dev/users"
    static let BASE_MEDIA = ""
    static let RAGISTER = "appregister"
    static let Login = "users/login"
    static let GET_POFILE_LIST = ""
    static let UPLOAD_IMAGE = "profileimage"
    static let CHECK_PAYMENT_STATUS = ""
    static let UPLOAD_DOC = ""
    static let TERMS_CONDITION = "terms_condition"
   }

struct KEYS {
    static let FEEDS_PATH = "DataFlow"
    static let DATA = "data"
    static let PACKAGE_DATA = "packageData"
    
    static let META = "meta"
    static let TOKEN = "token"
    static let STATUSCODE = "status"
    static let MESSAGE = "message"
    static let ERROR_DETAILS = "errorDetails"
    static let ERROR_CODE = "error"
    static let FIELD_ERRORS  = "fieldErrors"
    static let VERIFLOW_DOCUMENT_TYPE  = "veriflowDocumentTypes"
    
    static let EDUCATION_DATA = "education"
    static let HEALTH_DATA = "health"
    static let PACKAGE_DETAILS_DATA = "packageDetails"
    static let EMPLOYMENT_DATA = "employer"
    
    //AnyLine SDk Licence Key Trial Version
   // NSString * const kLicenseKey = @"YOUR KEY";
    static let MOBILENUMBER = "mobileNumber"
    static let FLAG = "flag"
    static let ISDCODE = "isdCode"


    static let NEW_PASSWORD = "newpassword"
    static let CONFIRM_PASSWORD = "confirmpassword"
    static let GETOTP = "Your verfication code is "
    static let OTP = "otp"
    static let PASSWORD = "password"
    static let NAME = "name"
    static let ID = "id"
    static let EMAIl = "email"
    static let USER_DETAILS = "UserDetails"
    static let LOGIN_TOKEN = "logintoken"
    static let LOGOUT = "logout"
    
    static let COUNTRY_ID = "CountryId"
    static let EMAIL = "email"
    static let MOBILE = "Mobile"

    static let UNIQUE_ID = "uniqueId"
    static let PROFILE_PIC = " picture"
    static let ACCESS_TOKEN = "access_token"
    static let PROFILE_ID = "profile_id"
    static let APPLICATION_ID = "applicantId"
    static let TOTAL_AMOUNT = "totalAmount"
    
    static let TITLE = "title"
    static let CASE_DETAILS = "caseDetails"
    static let CASE_LIST = "caseList"
    static let COMPONENT_DETAILS = "componentDetails"
    static let COMPONENT_LIST = "componentList"

    
    static let DATABASE_CHECK_DETAILS = "databaseCheckDetails"
    static let DATABASE_CHECK_LIST = "databaseList"

    static let EDUCATION_CHECK_DETAILS = "educationCheckDetails"
    static let EDUCATION_CHECK_LIST = "educationList"
    
    static let EMPLOYMENT_CHECK_DETAILS = "employmentCheckDetails"
    static let EMPLOYMENT_CHECK_LIST = "employmentList"

    static let HEALTH_LICENCE_CHECK_DETAILS = "healthLicenseCheckDetails"
    static let HEALTH_LICENCE_CHECK_LIST = "healthLicenseList"

    static let PROF_QUAL_CHECK_DETAILS = "profqualCheckDetails"
    static let PROF_QUAL_CHECK_LIST = "profqualList"
    static let BAR_CODE = "barCode"
    static let PASSPORT_NUMBER = "passportNumber"
    static let PASSPORT_NUMBERS = "passportNumbers"
    

    //Create a case Keys
    static let PAYMENT_URL = "url"
    static let CLIENT_NAME = "clientName"
    static let CLIENT_ID = "clientId"
    static let CATEGORY_NAME = "categoryName"
    static let CATEGORY = "category"
    static let CLIENT = "client"
    
    static let APPLICATION_TYPE = "applicationType"
    static let APPLICANT_TYPE = "applicantType"
    static let SERVICE_TYPE = "serviceType"
    static let CASE_ELIGIBILITY_NUMBER = "caseEligibilityNumber"
    static let EMPLOYMENT_NAME = "employmentName"
    static let HEALTH_LICENCE = "healthLicense"
//    static let PASSPORT_NUMBER = "passportNumber"
    static let EDUCATION_AUTHORITY_NAME = "educationAuthorityName"
    static let EDUCATION_AUTHORITY_COUNTRY = "educationAuthorityCountry"
    static let EDUCATIONAL_DOCUMENT = "edu"
    static let EMPLOYMENT_DOCUMENT = "emp"
    static let HEALTHLICENCE_DOCUMENT = "hea"
    static let SIGNATURE = "signature"
    static let DOCUMENT = "document"
    static let FILE_TYPE = "fileType"
    static let FILE_PATH = "filePath"
    static let FILE_ID = "id"
    static let HEALTH_AUTHORITY_NAME = "healthAuthorityName"
    static let ENPLOYMENT_AUTHORITY_NAME = "employmentAuthorityName"
    static let AUTHORITY_NAME = "authorityName"
    static let COUNTRY_NAME = "countryName"
    static let EMPLOYER_NAME = "employerName"
    
    
    //Create profile keys
    static let ADDRESS  = "address"
    static let COUNTRY  = "country"
    static let DATE_OF_BIRTH  = "dateOfBirth"
    static let EMAILID = "emailId"
    static let FIRST_COPY = "firstCopy"
    static let FIRST_NAME = "firstName"
    static let GENDER = "gender"
    static let LAST_NAME = "lastName"

    static let LAST_COPY = "lastCopy"
    static let MIDDLE_NAME = "middleName"
    static let NATIONALITY = "nationality"
    
    static let MULTIPART_FILE = "multipartfile"
    static let GENDER_MASTER_PATH = "data.genderMaster"
    static let COUNTRY_DETAIL_PATH = "data.countryDetails"
    static let MY_CASES_PATH = "data.myCaseDetails"
    
    static let EXPRESS_SERVICES = "expressServices"
    static let SMS_SERVICES = "smsService"
    
    //ENDORSEMENT
    static let ISLOACHECKED = "isLoaChecked"
    static let ISEDUCHECKED = "isEduChecked"
    static let ISEMPCHECKED = "isEmpChecked"
    static let ISHEALTHCHECKED = "isHeaChecked"
    
}

struct TRANSACTION_STATUS_MSG {
    static let SUCCESS = "Your transaction has been sucessfully completed."
    static let FAILED = "Your transaction has been failed."
    static let TRANSACTION_SUCCESS_STATUS = "Paid"
    static let TRANSACTION_PAENDING_STATUS = "Payment pending"
}
/*RSA Public Key : MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCMafU22KTZsT/gPnt1yB3ag+Yy/xCdw4ihT7qVRu4PNc6GNKzwZHicVyVDQIB6FS/q8klLsQmW/zgZ2qx+dJs8pUTFoqAPPFtpXUOFw+MiBzVwfDB9DW3gmwYz2drMrLKrTL9AScVYryfInGz/JEtAkd36+daOQpv6OXB8JlOptQIDAQAB
 
 AES Key : V33LPCJcVCxIb9/MpM90pg==
 */


struct BUTTON_TITLE {
    static let PAY_NOW = "Pay now"
    static let DOWNLOAD_RECIEPT = "Download receipt"
    static let CREATECASE = "Create a case"
    static let LINK = "Link"
    static let CHECK_STATUS = "Check status"
    static let VIEW = "View"
    static let UPDATE_CASE = "Update case"
}
struct ALERT_TITLE {
    static let OK = "Ok"
    static let CANCEL = "Cancel"
    static let WARNING = "Warning"

    static let ALLOW_CAMERA = "Allow Camera"
}
struct CONSTANT {
    static let AES_KEY = "V33LPCJcVCxIb9/MpM90pg=="
    static let RSA_PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCMafU22KTZsT/gPnt1yB3ag+Yy/xCdw4ihT7qVRu4PNc6GNKzwZHicVyVDQIB6FS/q8klLsQmW/zgZ2qx+dJs8pUTFoqAPPFtpXUOFw+MiBzVwfDB9DW3gmwYz2drMrLKrTL9AScVYryfInGz/JEtAkd36+daOQpv6OXB8JlOptQIDAQAB"
    // tag name to access the stored public key in keychain
    static let TAG_PUBLIC_KEY = "com.DataFlowGroup.DataFlow"
    static let COUNTRYCODE_MAXLENGTH = 4
    static let MOBILENO_MAXLENGTH = 15
    static let PASSWORD_MAXLENGTH = 15
    static let OTP_MAXLENGTH = 6
    static let ALLOWED_CHARS = "0123456789"
    static let ALLOWED_CHARS_PASSWORD = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%-_"
    static let ALLOWED_CHARS_ALPHA = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    static let PREVIEW_CORNER_RADIUS = CGFloat(10.0)
    static let PREVIEW_BUTTON_CORNER_RADIUS = CGFloat(5)
    static let wScale: CGFloat = 375.0 //Base width
    static let hScale: CGFloat = 667.0 //Base height
}
struct CONTROLLER_TITLE {
    static let PROFILES_TITLE = "My profiles"
    static let CREATECASE_TITLE = "Create my case"
    static let MYCASEDETAILS_TITLE = "My case details"
    static let CREATEPROFILE_TITLE = "Create a profile"
    static let PAYMENT_TITLE = "Payment"
    static let PAYMENT_PREVIEW_TITLE = "Price breakdown"
    static let MY_CASES_TITLE = "My cases"
    static let ENDORSEMENTS_TITLE = "Document review"
    static let AD_HOC_CASE_TITLE = "Check status"//"Ad hoc case"
    static let STATUS_TITLE = "Status"
    static let UPDATECASE_TITLE = "Update case"
    static let CHANGE_PASSWORD_TITLE = "Change password"
    static let MRZCONTROLLER_TITTLE = "Passport scan"
    
    static let LINK_A_CASE_TITLE = "Link a case"
}

struct LICENCE_KEYS{
//    static let ANYLINE_MRZ_SCAN = "eyJzY29wZSI6WyJBTEwiXSwicGxhdGZvcm0iOlsiaU9TIiwiQW5kcm9pZCIsIldpbmRvd3MiXSwidmFsaWQiOiIyMDE5LTAxLTAyIiwibWFqb3JWZXJzaW9uIjoiMyIsImlzQ29tbWVyY2lhbCI6ZmFsc2UsInRvbGVyYW5jZURheXMiOjMwLCJzaG93UG9wVXBBZnRlckV4cGlyeSI6dHJ1ZSwiaW9zSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdLCJhbmRyb2lkSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdLCJ3aW5kb3dzSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdfQpHNWZib3lZOUtCWDU0N2UxbVJQTUJUVTRUZWJJR3NZbzVWWVVKSWx0TGVYdHgrdThJNFJZYlBycVRYTFB5aWhML2V4SEVWSjVWUUh6MVR5ejFkYWlBR1Z5Nk9KV2VVUVFwQ0ZWMVcxbkVuNElvcE04SEtlbE9rdjhWUjgxZkR6Vm5CaTQvQi9ZdlJ5SWRrOUczSEdMU2F1UDE5ZzJJRFZXRlVYeWZ1L2hRbWttcWwyb1Ribm9HeHFSUHZCRm5kdXI0MVZkYlgxWU5lTyswcHlQdTZUQU9pelZyQTQ2QURISjRkU2R0QWJnLzFWeC80OVVqZ05oVjBzU3owMHhIdWhnTHFmd0JQTmY0MkpBQ2ZYaUp2MXF0UXN3MVg1SHA5amd4WjNPU3dIbkxPVXhlUnFSUW9Qdk8xWkwzRUJUL04zMUNoaDZuNWRJSDMvSHU4aWl6QVI3a0E9PQ=="
  //  static let ANYLINE_MRZ_SCAN = "eyJzY29wZSI6WyJBTEwiXSwicGxhdGZvcm0iOlsiaU9TIiwiQW5kcm9pZCIsIldpbmRvd3MiXSwidmFsaWQiOiIyMDE5LTAyLTAyIiwibWFqb3JWZXJzaW9uIjoiMyIsImlzQ29tbWVyY2lhbCI6ZmFsc2UsInRvbGVyYW5jZURheXMiOjMwLCJzaG93UG9wVXBBZnRlckV4cGlyeSI6dHJ1ZSwiaW9zSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdLCJhbmRyb2lkSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdLCJ3aW5kb3dzSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5EYXRhRmxvdyJdfQpvMVRtbGh3QWVaT2tZNHNOVnlnVUxOQ1pzVXpYOU0xZ3dLeE9JTFgwcG1TdGgvNkt2WDByUlFvWWZNWVpmMjkrbCtDdGxlZCtERHI0eXd2MFNIRWxnZHVqZUxCaVFOdnA5OHhqSy82UVZDMklIbW5KK1RUL2I3UkhyU2Q2Z2oreVp0VXp2cm9ITmVucW1ScFJIN2ZFWjQ3UG5YTUFxeXRxMTFJVXE1VjgxdnFXRm01aWtBUitIbnNWbllaUi9hSG85b2RFbG14UkppNm9LaHZSUXdMMlREbjI5V0JtTFBOVEFIMk9nMW1RYm1sMWVNRnJEQkxHem9sMHYxN0NzQkMzS25FSVNvWG5UTXpLYm1xZ1ZTSnlkYUVLay9EaWNsRFhNTnM1bWVydUNTSWhET1ZGL2FsbVBKYW00eXlqMDhMbE1pZ2FGcGNGK0ZFWEZVSzlOTTlaU2c9PQ=="
    static let ANYLINE_MRZ_SCAN = "eyJzY29wZSI6WyJBTEwiXSwicGxhdGZvcm0iOlsiaU9TIiwiQW5kcm9pZCIsIldpbmRvd3MiXSwidmFsaWQiOiIyMDE5LTAzLTI0IiwibWFqb3JWZXJzaW9uIjozLCJtYXhEYXlzTm90UmVwb3J0ZWQiOjUsInNob3dXYXRlcm1hcmsiOnRydWUsInBpbmdSZXBvcnRpbmciOnRydWUsImRlYnVnUmVwb3J0aW5nIjoib3B0LW91dCIsInRvbGVyYW5jZURheXMiOjUsInNob3dQb3BVcEFmdGVyRXhwaXJ5Ijp0cnVlLCJpb3NJZGVudGlmaWVyIjpbImNvbS5EYXRhRmxvd0dyb3VwLkFwcCJdLCJhbmRyb2lkSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5BcHAiXSwid2luZG93c0lkZW50aWZpZXIiOlsiY29tLkRhdGFGbG93R3JvdXAuQXBwIl19ClhlQUZ5YlBJdXRjUHVIOXR2RHlGQjBJVGs5RWFmaGNMRmphbFRPN3FqUWJBUW1BYnZKQ3Y4eHBnUVRJUDh6blJ3ekgrS1JkeEVyTVRKZElYaXlRaUk3K0xXQXlTWnhDNlVPcy94UkdEd251OFp3Y2JnZUlyR1NKeDdyMUlCV3hXWnMxQnNPUlQ2QUV2WGRWYVUraDY0SHhVZmoyWHp2YTg4bmU0cnAzQlRCQ0VYcDM1bzR4czJsVmFyVHpjNmt3UWs5ZUpjTDF0cFQ5bnlIRUhpV0toTFFmcVhNdzU5Umg3RTNGZ2ZnS3ZPSU9xZk1uNTV2ZFRDY2NUQXJtNXJwT0dUbitMcHhZWC94ZjMyTmppSmM5VG8wVExMTXlDQTF1VmxDZURMdUIrOWQxSTY0OFdhSGRnOGV1NG9SVUlSUEM3SEh5eHJJK2Y4T3NPWWVFRHk3RlM1dz09"
   // static let ANYLINE_MRZ_SCAN = "eyJzY29wZSI6WyJBTEwiXSwicGxhdGZvcm0iOlsiaU9TIiwiQW5kcm9pZCIsIldpbmRvd3MiXSwidmFsaWQiOiIyMDE5LTAzLTI0IiwibWFqb3JWZXJzaW9uIjozLCJtYXhEYXlzTm90UmVwb3J0ZWQiOjUsInNob3dXYXRlcm1hcmsiOnRydWUsInBpbmdSZXBvcnRpbmciOnRydWUsImRlYnVnUmVwb3J0aW5nIjoib3B0LW91dCIsInRvbGVyYW5jZURheXMiOjUsInNob3dQb3BVcEFmdGVyRXhwaXJ5Ijp0cnVlLCJpb3NJZGVudGlmaWVyIjpbImNvbS5EYXRhRmxvd0dyb3VwLkFwcCJdLCJhbmRyb2lkSWRlbnRpZmllciI6WyJjb20uRGF0YUZsb3dHcm91cC5BcHAiXSwid2luZG93c0lkZW50aWZpZXIiOlsiY29tLkRhdGFGbG93R3JvdXAuQXBwIl19ClhlQUZ5YlBJdXRjUHVIOXR2RHlGQjBJVGs5RWFmaGNMRmphbFRPN3FqUWJBUW1BYnZKQ3Y4eHBnUVRJUDh6blJ3ekgrS1JkeEVyTVRKZElYaXlRaUk3K0xXQXlTWnhDNlVPcy94UkdEd251OFp3Y2JnZUlyR1NKeDdyMUlCV3hXWnMxQnNPUlQ2QUV2WGRWYVUraDY0SHhVZmoyWHp2YTg4bmU0cnAzQlRCQ0VYcDM1bzR4czJsVmFyVHpjNmt3UWs5ZUpjTDF0cFQ5bnlIRUhpV0toTFFmcVhNdzU5Umg3RTNGZ2ZnS3ZPSU9xZk1uNTV2ZFRDY2NUQXJtNXJwT0dUbitMcHhZWC94ZjMyTmppSmM5VG8wVExMTXlDQTF1VmxDZURMdUIrOWQxSTY0OFdhSGRnOGV1NG9SVUlSUEM3SEh5eHJJK2Y4T3NPWWVFRHk3RlM1dz09"
}

struct STATICDATA{
    static let pickOptionClient = ["SCFHS"]
    static let pickOptionCategory = ["New","Fresher","Renew","Additional New","Additional Renew"]
    static let pickOptionApplicationType = ["Physician","Non-Physician"]
    static let pickOptionServiceType = ["Applicant Assist"]
    static let tittleCateArray = ["Education","Employment","Health license"]
    static let infoCateArray = ["Upload front page of highest education certificate","Upload relieving letter of recent employement","Upload front page of License"]
    static let checkOnePlaceHolderArray = ["Authority / University name","Recent employer name","Issuing authority name"]
    static let checkTwoPlaceHolderArray = ["Authority Country","",""]
    static let txtFieldPlaceHolderArray = [
        "First name","Middle name","Last name", "Passport number", "Date of birth","Nationality"]
    //"Gender"
    static let pickerOptionGender = ["Male","Female","Other"]
    static let pickerOptionDocumentType = "Document type"
}

struct CHECKMSG {
    static let newCheckMsg = "1 education,1 employment or 1 health licence"
    static let fresherCheckMsg = "1 education"
    static let restAllCheckMsg = "At least 1 component"
    static let  multipleDocMsg = " documents uploaded"
    static let  oneDocMsg = " document uploaded"
}

struct CATEGORY_NAME {
    static let ADDITIONAL = "Additional"
    static let ADDITIONAL_NEW = "Additional New"
    static let ADDITIONAL_RENEW = "Additional Renew"
    static let  FRESH = "Fresh"
    static let  FRESHER = "Fresher"
    static let  NEW = "New"
    static let  RENEW = "Renew"
}

struct APPLICATION_TYPE {
    static let PHYSICAN = "Physician"
    static let NONPHYSICIAN = "Non-Physician"
}

struct IMAGENAME {
    static let DFG_LOGO = "DFGLogo"
    static let MOB_ICON = "mobIcon"
    static let PASSWORD_ICON = "passwordIcon"
    static let OPEN_LOCK = "openLock"
    static let SUBMIT_BTN = "SubmitBtn"
    static let EYE_OPEN = "eyeOpen"
    static let EYE_CLOSE = "eyeClose"
    static let FINGER_PRINT = "fingerPrint"
    static let BACK_BTN = "backBtn"
    static let BACK_BTN_SELECTED = "backBtnSelected"

    static let LOGOUT_BTN = "logoutIcon"
    static let POSITIVE = "positive"
    static let NEGATIVE = "negative"
    static let WITHHOLD = "pendingIcon"
    static let MENU_ICON = "menuIcon"
    static let MENU_ICON_SELECTED = "menuIconSelected"

    
    static let USER_PLACEHOLDER = "userImage"
    static let CREATE_A_CASE = "createCase"
    static let LINK_A_CASE = "linkCase"
    static let SCAN = "scan"
    static let UPLOAD = "upload"
    static let UPLOAD_DISABLE = "uploadDisable"
    static let SCAN_SMALL = "scanSmall"
    static let UPLOAD_SMALL = "uploadSmall"
    static let DROP_DOWN = "dropDown"
    static let ADD_PROFILE = "addProfileIcon"
    static let ADD_PROFILE_SELECTED = "addProfileIconSelected"
    
    static let EDIT_PROFILE = "editProfile"
    static let CALENDER = "calender"
}

struct ERROR_MESSAGE {
    static let MOBILE_EMPTY = "Please provide a valid mobile number."
    static let COUNTRYCODE_EMPTY = "Please provide a country code."
    static let OTP_EMPTY = "Please enter a OTP that we have sent you on your registered mobile number."
    static let OTP_VALIDATE = "Provided OTP is invalid OTP, please provide correct OTP."

    static let PASSWORD_EMPTY = "Please provide password."
    static let PROFILEIMAGE_EMPTY = "Please choose profile image."

    static let CURRENT_PASSWORD_EMPTY = "Please provide the current password."
    static let NEW_PASSWORD_EMPTY = "Please provide a new password."
    static let CONFIRM_PASSWORD_EMPTY = "Please retype the same password."
   
    static let SESSION_EXPIRED = "Session Expired" //This is for validate message of api
    static let UNAUTHORIZED = "Unauthorized" //This is for validate message of api
    static let VALIDATION_FAILED = "Validation Failed." //This is for validate message of api
    static let DONT_HAVE_PROFILE = "You don't have any profile" //This is for validate message of api
    static let SERVER_ERROR = "Somthing went wrong. Please try again."

    static let SIGNOUT_SUCCESS = "Successfully signed out."
    
    static let COUNTRYCODE_INVALID_MAX = "Country code should not more than four characters long."
    static let COUNTRYCODE_INVALID_MIN = "Country code should be at least two characters long."
    static let PASSWORD_INVALID_MAX = "Password should not more than fifteen characters long."
    static let PASSWORD_REGEX_CHECK = "Password should be minimum ten characters with combination of at least one capital, one small alphabet, one number and one special character."
    static let PASSWORD_MATCHED = "New password and retype password must be same."
    static let PASSWORD_INVALID_MIN = "Password should be at least ten characters long."
    static let MOBILE_INVALID_MAX = "Mobile number should not more than fifteen digit long."
    static let MOBILE_INVALID_MIN = "Mobile number should be at least seven digit long."
    static let MOBILE_INVALID = "Mobile number is not valid."
    static let CONFIRMPASSWORD_EMPTY = "Please retype password."
    static let CONFIRMPASSWORD_INVALID = "Password and retype password should be same."
    
    static let OTP_INVALID_MAX = "Country should not more than six characters long."
    static let OTP_INVALID_MIN = "Country should be at least six characters long."
    
    static let NAME_INVALID_MAX = "Name should not more than fifty characters long."
    static let NAME_INVALID_MIN = "Name should be at least two characters long."
    
    static let ADDEDUCATION_FRONT_IMAGE_EMPTY = "Please select front image."
    static let ADDEMPLOYMENT_BACK_IMAGE_EMPTY = "Please select back image."
    static let DATAFLOWCASENO_EMPTY = "Please enter a DataFlow case number."
    static let PASSPORTNO_EMPTY = "Please enter a passport number."
    static let MOBILENO_ALREADY_IN_USE = "Mobile number is already in use."
    
    static let CLIENT_EMPTY = "Please select a client."
    static let CATEGORY_EMPTY = "Please select a case type."
    static let APPLICATIONTYPE_EMPTY = "Please select a role."
    static let SERVICETYPE_EMPTY = "Please select a premium service."
    static let DOCUMENTTYPE_EMPTY = "Please select a document type."
    static let EDUCATIONAL_DOCUMENT_EMPTY = "Please upload the educational document."
    static let EMPLOYER_DOCUMENT_EMPTY = "Please upload the employment document."
    static let HEALTHLICENCE_DOCUMENT_EMPTY = "Please upload the health licence."
    static let HEALTHLICENCE_AUTHORITYNAME_EMPTY  = "Please enter the health licence authority name."
    static let AUTHORITYNAME_EMPTY = "Please enter an authority name or university name."
    static let EMPLOYMENT_AUTHORITYNAME_EMPTY  = "Please enter the employer name."

    static let AUTHORITYCOUNTRY_EMPTY = "Please enter an authority country."
    static let VIEW_PROFILE_EMPTY = "You don't have any profile. Please create a profile."
    static let MY_CASE_EMPTY = "You don't have any case. Please create a case."

    static let NEW_MANDATORY_CHECK = "Please enter health license or employment anyone is mandatory. Preferred health license."
    static let RENEW_MANDATORY_CHECK = "Education, employment, health licence though at least one component will need to be entered."
  
    //Create Profile
    static let EMAIL_EMPTY = "Please enter the email id."
    static let EMAIL_INVALID = "Please enter a valid email id."
    static let PASSPORT_COPY_EMPTY = "Please upload the passport copy."
    static let FIRSTNAME_EMPTY = "Please enter the first name or scan your passport to feed the field."
    static let LASTNAME_EMPTY = "Please enter the last name or scan your passport to feed the field."
    static let PASSPORT_NUMBER_EMPTY = "Please enter the passport number or scan your passport to feed the field."
    static let GENDER_EMPTY = "Please provide the gender information."
    static let DOB_EMPTY = "Please select the date of birth or scan your passport to feed the field."
    static let NATIONALITY_EMPTY = "Please select the nationality or scan your passport to feed the field."
    static let SIGNATURE_EMPTY = "Please provide your LOA by making your signature."
}

let kDobDateFormat = "dd-MM-yyyy"
let kIndianEnglishLocale = Locale(identifier: "en_IN")
let kMinAgeLimit = 18
let kMaxAgeLimit = 65

struct GENERAL_MESSAGE {
    static let PDF_DOWNLOADED = "The receipt has been downloaded. Do you want to open it?"
    static let EMAIL_EDUCATION_TEXT = "Please insert/enter a valid email address as you will get status updates on your case, and may be contacted by DataFlow for any insufficiency."
    static let REMOVE_CONFIRMATION = "Do you really want to delete it?"
    static let SCAN_PREVIEW_PLACEHOLDER  = "Click the scan icon to scan your passport details."
    static let UPLOAD_PREVIEW_PLACEHOLDER = "Click the upload icon to upload a copy of your passport."
    static let PREMIUMSERVICE_EDUTEXT = "Complete your submission in just fifteen minutes with the help of one of our Applicant Assistants at a premium of 149.99 SAR over package price."
    static let EXPRESS_SERVICE_EDUTXT   = "Fast tracks your application with a turnaround time of as fast as 14 working days at a premium of 656.20 SAR over package price."
    static let LOA_MESSAGE = "Please select letter of authorization"
    static let ENDORSEMENT_EDUCATION_TEXT =  "Please review the documents and confirm by checking the check box"
    static let CAMERA_ACCESS_TITLE = "Camera access is required."
    static let CAMERA_ACCESS_MESSAGE = "Camera access is required to make full use of this app."
    static let DONT_HAVE_CAMERA = "You don't have camera."
    static let MEDIA_OPTION_TITLE = "Upload a copy of your passport."
    static let SAVING_DETAILS = "Saving details"
    static let UPDATING_DETAILS = "Updating details"

    static let PDF_NOT_FOUND = "PDF is not found"
}

struct CURRANCY {
    static let CHOOSED_CURRANCY = " SAR"
  
}

struct PAYMENT_PREVIEW_ITEMS {
    static let PACKAGE_DETAIL = "Package"
    static let TOTAL_PRICE = "Total price"
    static let APPLICATION_ID = "Application ID"
    static let PRICE = "Price"
    static let TAX = "Tax"
    static let ADDITIONAL_PRICE = "Additional price"
    static let PAYMENT_REFERENCE_ID = "Payment reference ID"
    static let PAYMENT_STATUS = "Payment status"
    static let PAYMENT_DATE = "Payment date"
    static let APPLICANT_ASSIST_PRICE = "149.99 SAR"
    static let APPLICANT_ASSIST_TAX = "7.49"
    static let EXPRESS_SERVICE_PRICE = "656.20"
    static let EXPRESS_SERVICE_TAX = "32.81"
    static let SMS_SERVICE_PRICE = "9.75"
    static let ZERO_PRICE = "0.00"
    static let SMS_SERVICE_TAX = "0.48"
    static let APPLICATION_ASSIST = "Applicant Assist service" //"Applicant assist price"
    static let EXPRESS_SERVICE = "Express service price"
    static let SMS_SERVICE = "SMS service price"
    static let PAYMENT_ACCEPTED = "Accepted"
    static let PAYMENT_APPROVED = "Approved"
}
struct FORMATTER {
    static let DATE_FORMATTER = "dd MMM yyyy hh:mm:ss a"
}
struct PRICE {
    // price on package
    static let NEW_PHYSICIAN_PRICE = "600 SAR"
    static let NEW_NONPHYSICIAN_PRICE = "500 SAR"
    static let FRESHER_PHYSICIAN_PRICE = "600 SAR"
    static let FRESHER_NONPHYSICIAN_PRICE = "500 SAR"
    static let RENEW_PHYSICIAN_PRICE = "400 SAR"
    static let RENEW_NONPHYSICIAN_PRICE = "350 SAR"
    static let ADDITIONAL_PHYSICIAN_PRICE = "300 SAR"
    static let ADDITIONAL_NONPHYSICIAN_PRICE = "300 SAR"
    static let ADDITIONAL_NEW__PHYSICIAN_PRICE = "300 SAR"
    static let ADDITIONAL_NEW_NONPHYSICIAN_PRICE = "300 SAR"
    static let ADDITIONAL_RENEW__PHYSICIAN_PRICE = "400 SAR"
    static let ADDITIONAL_RENEW_NONPHYSICIAN_PRICE = "350 SAR"
    
}

 struct VIEW_CONTROLLER_IDS {
    static let PaymentStoryboardId = "Payment"
    static let PaymentControllerIdentifier = "PaymentViewController"
    static let PDFViewerStoryboardId = "PDFViewer"
    static let PDFViewerControllerIdentifier = "PDFViewer"
    static let ImageViewerStoryboardId = "ImagePreviewer"
    static let ImageViewerControllerIdentifier = "ImagePreviewer"
    static let ScanStoryboardId = "ScanView"
    static let SignatureStoryboardId = "SignatureView"
}
struct ADDITIONAL_PRICE {
    // additional price per check
    static let NEW_PHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let NEW_NONPHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let FRESHER_PHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let FRESHER_NONPHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let RENEW_PHYSICIAN_ADDITIONAL_PRICE = "400 SAR"
    static let RENEW_NONPHYSICIAN_ADDITIONAL_PRICE = "350 SAR"
    static let ADDITIONAL_PHYSICIAN_ADDITIONAL_PRICE = "100 SAR"
    static let ADDITIONAL_NONPHYSICIAN_ADDITIONAL_PRICE = "100 SAR"
    static let ADDITIONAL_NEW__PHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let ADDITIONAL_NEW_NONPHYSICIAN_ADDITIONAL_PRICE = "300 SAR"
    static let ADDITIONAL_RENEW__PHYSICIAN_ADDITIONAL_PRICE = "400 SAR"
    static let ADDITIONAL_RENEW_NONPHYSICIAN_ADDITIONAL_PRICE = "350 SAR"
    
}

struct PPAYMENT_STATUS_MSG{
    static let TRNS_SUCCESS = "Transaction Successful"
    static let TRNS_DECLINED = "Transaction Declined";
    static let BANK_DECLINED = "Bank Declined Transaction"
    static let BANK_NO_REPLY = "No Reply from Bank"
    static let EXPIRED_CARD = "Expired Card"
    static let INSUFFICIENT_FUNDS = "Insufficient Funds"
    static let ERROR_COMMUNICATION_BANK = "Error Communicating with Bank"
    static let PAYMENT_SERVER_ERROR = "Payment Server detected an error"
    static let TRANSACTION_TYPE_NOTSUPPORTED = "Transaction Type Not Supported"
    static let NOT_TO_CONTACT_BANK = "Bank declined transaction (Do not contact Bank)"
    static let TRANSACTION_ABORTED = "Transaction Aborted"
    static let CONTACT_TO_BANK = "Transaction Declined - Contact the Bank"
    static let TRANSACTION_CANCELLED = "Transaction Cancelled"
    static let DEFFRED_TRANSACTION = "Deferred transaction has been received and is awaiting processing"
    static let SECURE_AUTH_FAILED = "3-D Secure Authentication failed"
    static let SHOPPING_TRANSACTION_LOCKED = "Shopping Transaction Locked (Please try the transaction again later"
    static let CARDHOLDER_AUTH_SCHEME = "Cardholder is not enrolled in Authentication scheme"
    static let PAYMENT_ADAPTOR_PROCEED = "Transaction has been received by the Payment Adaptor and is being processed"
    static let TRANSACTION_NOT_PROCESSED = "Transaction was not processed - Reached limit of retry attempts allowed"
    static let DUPLICATE_SESSIONID = "Duplicate SessionID"
    static let ADDRESS_VERIFICATION_FAILED = "Address Verification Failed"
    static let CARD_SECURITY_CODE_FAILED = "Card Security Code Failed"
    static let ADDRESSSECURITY_VERIFICATION_FAILED = "Address Verification and Card Security Code Failed"
    static let UNABLE_TO_DETERMINED = "Unable to be determined"
}

struct PACKAGE_ID {
    // package ids
    static let NEW_PHYSICIAN_PACKAGE_ID = "9063"
    static let NEW_NONPHYSICIAN_PACKAGE_ID = "9058"
    static let FRESHER_PHYSICIAN_PACKAGE_ID = "9065"
    static let FRESHER_NONPHYSICIAN_PACKAGE_ID = "9060"
    static let RENEW_PHYSICIAN_PACKAGE_ID = "9066"
    static let RENEW_NONPHYSICIAN_PACKAGE_ID = "9061"
    static let ADDITIONAL_PHYSICIAN_PACKAGE_ID = "9064"
    static let ADDITIONAL_NONPHYSICIAN_PACKAGE_ID = "9059"
    static let ADDITIONAL_NEW__PHYSICIAN_PACKAGE_ID = "9064"
    static let ADDITIONAL_NEW_NONPHYSICIAN_PACKAGE_ID = "9059"
    static let ADDITIONAL_RENEW__PHYSICIAN_PACKAGE_ID = "9067"
    static let ADDITIONAL_RENEW_NONPHYSICIAN_PACKAGE_ID = "9062"
    
}

func ColorCode(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
}

let KSideDrawerWidth = screenWidth - 50
let kMenuWidth = UIScreen.main.bounds.width * 0.82

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
let StatusBarColor = ColorCode(red: 50, green: 140, blue: 169, alpha: 1.0)
let appDelegate = UIApplication.shared.delegate as! AppDelegate

// ---------- App Font ------------
let AppFontRegular = "SFProDisplay-Regular"
let AppFontBold = "Roboto-BoldCondensed"
let AppFontMedium = "Roboto-Medium"

func getImagesForSideMenu () -> NSArray
{
    let arrayMenuImage: NSArray? = NSArray(objects: "","","","")
    return arrayMenuImage!
}

let userDefaults : UserDefaults = UserDefaults.standard

let isIphone5 = UIScreen.main.bounds.size.width > 320 ? false : true
let appBlueThemeColor = UIColor(red: 64/255.0, green: 179/255.0, blue: 210/255.0, alpha: 1.0)
let appLightGaryColor = UIColor(red: 199/255.0, green: 199/255.0, blue: 205/255.0, alpha: 1.0)

enum LoginMode:Int {
    case Facebook , Google , Normal
}


fileprivate struct MENUOPTIONS {
    // Options for Side Menu
    static let OPTION_ONE = "Profile"
    static let OPTION_TWO = "View status"
    static let OPTION_THREE = "Change password"
    static let OPTION_FOUR = "My cases"
    static let OPTION_FIVE = "Logout"
}

enum SideMenuOptions: Int {
    case profile = 0
    case viewStatus
    case changePassword
    case myCases
    case logout
    func title() -> String? {
        switch self {
        case .profile: return MENUOPTIONS.OPTION_ONE
        case .viewStatus: return MENUOPTIONS.OPTION_TWO
        case .changePassword: return MENUOPTIONS.OPTION_THREE
        case .myCases: return MENUOPTIONS.OPTION_FOUR
        case .logout: return MENUOPTIONS.OPTION_FIVE
        }
    }
}
enum ProfileCreationSection {
    case emailTextField
    case passport
    case textFields
    case signature
}

enum TextFieldType: Int {
    case firstName = 1
    case middleName
    case lastName
    case passportNum
   // case gender
    case DOB
    case nationality
}
enum ProfileCreationPickerType: Int {
    case gender = 1021
    case country
}

enum CaseCreationPickerType: Int {
    case client = 100
    case category
    case applicationType
    case serviceType
    case documentType
    case country
}
//Case Creation
enum CaseCreationHeaderSection {
    case clientName
    case category
    case applicationType
    case serviceType
}

enum CaseCreationTextFieldType: Int {
    case Education
    case AuthorityCountry
    case DocumentType
}
enum PreviewButtonState: Int {
    case disable = 1
    case selectable = 2
    case ticked = 3
}

enum AdhocCaseViewType {
    case checkStatus
    case linkCase
}




//New
enum CaseCreationSection {
    case top
    case education
    case employment
    case healthLicense
    
    func title() -> String? {
        switch self {
        case .top: return ""
        case .education: return "Education"
        case .employment: return "Employment"
        case .healthLicense: return "Health license"
        }
    }
}
enum CaseCreationTopFieldType: Int {
    case client = 1
    case caseType
    case role
    case premiumService
    case expressService
    case smsService
    func placeHolder() -> String? {
        switch self {
        case .client: return "Client"
        case .caseType: return "Case type"
        case .role: return "Role"
        case .premiumService:
            return "Premium services"
        case .expressService:
            return ""
        case .smsService:
            return ""
        }
    }
    
    
    func defaultText() -> String? {
        switch self {
        case .client: return ""
        case .caseType: return ""
        case .role: return ""
        case .premiumService:
            return "Applicant Assist"
        case .expressService:
            return "Express services"
        case .smsService:
            return "SMS services"
        }
    }
}

enum CaseCreationComponentFieldType: Int {
    case authorityName = 1
    case country
    case documentType
    case document
    func placeHolder() -> String? {
        switch self {
        case .authorityName: return "Authority/University name"
        case .country: return "Authority country"
        case .documentType: return "Document type"
        case .document: return ""
        }
    }
}

enum CaseCreationServiceSwitchType: Int {
    case premium = 1101
    case express
    case sms
}
