//
//  BaseViewController.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 23.12.2021.
//

import UIKit

open class BaseViewControllerImpl: UIViewController, BaseView {

    public var presenter: BaseViewPresenter?
    
    required public init(presenter: BaseViewPresenter?) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\(#function): \(String(describing: type(of: self)))")
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        setupLayouts()
        setupActions()
        
        presenter?.loadData()
    }
    
    open func setupSubviews() {}
    open func setupLayouts() {}
    open func setupActions() {}
}
