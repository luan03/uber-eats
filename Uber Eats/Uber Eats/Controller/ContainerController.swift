//
//  ContainerController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 26/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    //MARK: - Properties
    var menuController: MenuController!
    var centerController: UIViewController!
    var isExpanded = false
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return isExpanded
    }
    
    func moveToNext(controller: UIViewController) {
        
        view.subviews.forEach({ $0.removeFromSuperview() })
        
        centerController = UINavigationController(rootViewController: controller)
        
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
        
        moveToNext(controller: homeController)
    }
    
    func configureMenuController() {
        // overhead
        menuController =  MenuController()
        menuController.delegate = self
        view.insertSubview(menuController.view, at: 0)
        addChild(menuController)
        menuController.didMove(toParent: self)
        print("Did add menuController")
    }
    
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?) {
        
        if shouldExpand {
            //show menu
            UIView.animate(withDuration: 0.5,  delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0,
                           options: .curveEaseInOut, animations: {
                            
                            self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        } else {
            // hide menu
            UIView.animate(withDuration: 0.5,  delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0,
                           options: .curveEaseInOut, animations: {
                            
                            self.centerController.view.frame.origin.x = 0
            }) {
                (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
        
        animateStatusBar()
    }
    
    func didSelectMenuOption(menuOption: MenuOption) {
        
        switch menuOption {
            
        case .Home:
            print("Home")
            
            let homeController = SignupController()
            homeController.delegate = self
            moveToNext(controller: homeController)
            
        case .Cuisines:
            print("Cuisines")
        case .Search:
            print("Search")
        case .Cart:
            print("Cart")
        case .Profile:
            print("Profile")
        case .Orders:
            print("Orders")
        case .Logout:
            print("Logout")
        }
    }
    
    func animateStatusBar() {
        UIView.animate(withDuration: 0.5,  delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0,
                       options: .curveEaseInOut, animations: {
                        
                        self.setNeedsStatusBarAppearanceUpdate()
        }, completion: nil)
    }
    
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        
        if !isExpanded {
            configureMenuController()
            print("configureMenuController")
        }

        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
    
}
