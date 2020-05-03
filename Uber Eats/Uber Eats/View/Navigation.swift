//
//  Navigation.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 02/05/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

final class Navigation:UIViewController {
    
    //MARK: - Properties
    var delegate: HomeControllerDelegate?

    //MARK: - Init
    
    init() {
         super.init(nibName: nil, bundle: nil)
        configureNavigationBar()
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureNavigationBar() {
        print("start to create the navigation")
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Signup Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlerMenuToggle))
    }
    
    @objc func handlerMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
}
