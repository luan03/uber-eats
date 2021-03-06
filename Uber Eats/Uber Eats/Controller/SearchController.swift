//
//  SearchController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 03/05/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import Foundation

import UIKit

class SearchController: UIViewController {
    
    //MARK: - Properties
    var delegate: ViewControllerDelegate?
    
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
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.barStyle = .black

        navigationItem.title = "Search"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handlerMenuToggle))
    }

    @objc func handlerMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
}
