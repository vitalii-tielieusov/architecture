//
//  BaseViewBuilder.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 23.12.2021.
//

import UIKit

public struct BaseViewBuilderImpl: BaseViewBuilder {
    
    init() { }
    
    public func build() -> UIViewController {
        let presenter = BaseViewPresenterImpl()
        let vc = BaseViewControllerImpl(presenter: presenter)
        presenter.view = vc
        return vc
    }
}
