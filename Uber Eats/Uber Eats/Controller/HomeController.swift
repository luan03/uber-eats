//
//  HomeController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 25/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    //MARK: - Properties
    var delegate: HomeControllerDelegate?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        configureNavigationBar()
    }
    
    fileprivate func setupLayout() {
        view.backgroundColor = .white
    }
    
    //MARK: - Handlers
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black

        navigationItem.title = "Home Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlerMenuToggle))
    }

    @objc func handlerMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
}
