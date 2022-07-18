//
//  BaseViewPresenter.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 23.12.2021.
//

import Foundation

open class BaseViewPresenterImpl: BaseViewPresenter {
    open weak var view: BaseView?
    
    public init() {}
    
    open func viewDidLoad() {}
}
