//
//  CustomAlertViewControllerExtension.swift
//  CustomAlert
//
//  Created by Syed Osaim Tahir on 10/09/2021.
//

import UIKit

extension UIViewController {

    func showCustomAlertWith(title: String?, description: String?,cancelButtonTitle:String?,otherButtonTitle:String?, action: @escaping (_ answer: String?) -> Void) {
        let alertVC = CommonAlertVC.init(nibName: "CommonAlertVC", bundle: nil)
        alertVC._title = title
        alertVC._description = description
        alertVC.action = action
        alertVC.otherButtonTitle = otherButtonTitle
        alertVC.cancelButtonTitle = cancelButtonTitle
        //Present
        alertVC.modalTransitionStyle = .crossDissolve
        alertVC.modalPresentationStyle = .overCurrentContext
        self.present(alertVC, animated: true, completion: nil)
    }
    
    func showLogoutAlert( action: @escaping (_ answer: String?) -> Void){
        self.showCustomAlertWith(title: "Logout title string", description: "logout description", cancelButtonTitle: "Cancel", otherButtonTitle: "Logout", action: action)
    }
    
    func showWarningMessage( action: @escaping (_ answer: String?) -> Void){
        self.showCustomAlertWith(title: "Warning message string", description: nil, cancelButtonTitle: nil, otherButtonTitle: "Ok", action: action)
    }

}
