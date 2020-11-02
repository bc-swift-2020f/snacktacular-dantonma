//
//  UIViewController+alert.swift
//  Snacktacular
//
//  Created by Marissa D'Antonio on 11/2/20.
//

import UIKit

extension UIViewController {
    func oneButtonAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alert)
        let defultAction = UIAlertAction(title: "Ok", style: .defult, handler: nil)
        alertController.addAction(defultAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
