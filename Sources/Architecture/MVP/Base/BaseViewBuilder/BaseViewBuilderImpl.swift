//
//  BaseViewBuilder.swift
//  Inspire me
//
//  Created by Vitaliy Teleusov on 23.12.2021.
//

import UIKit

struct BaseViewBuilderImpl: BaseViewBuilder {
    
    init() { }
    
    func build() -> UIViewController {
        let presenter = BaseViewPresenterImpl()
        let vc = BaseViewControllerImpl(presenter: presenter)
        presenter.view = vc
        return vc
    }
}
