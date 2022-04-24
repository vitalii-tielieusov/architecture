//
//  BaseViewExtensions.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 28.12.2021.
//

import UIKit
import commonUI

public extension BaseViewAdditions where Self: BaseViewControllerImpl {
    func animateActivityIndicator(_ animate: Bool) {}
    
    func showError(_ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "",
                message: message,
                preferredStyle: .alert)
            alert.addAction(UIAlertAction.ok())
            self.present(alert, animated: true)
        }
    }
}
