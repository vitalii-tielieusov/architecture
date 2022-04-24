//
//  BaseViewController.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 28.12.2021.
//

import Foundation
import UIKit

public protocol BaseView: BaseViewPattern, BaseViewAdditions {}

public protocol BaseViewPattern: NSObjectProtocol {
    
    init(presenter: BaseViewPresenter?)
    
    func setupSubviews()
    func setupLayouts()
    func setupActions()
}

public protocol BaseViewAdditions {
    func animateActivityIndicator(_ animate: Bool)
    func showError(_ message: String)
}