//
//  SwipingController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 11/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pages = [
        Page(imageName: "browse", headerText: "Browse Restaurants", bodyText: "Welcome to Uber Eats! Login and check out delicious food from hundreds of restaurants around you."),
        Page(imageName: "order", headerText: "Order Food", bodyText: "Hungry? Order food in just a few clicks and we'll take care of you."),
        Page(imageName: "save", headerText: "Reorder & Save", bodyText: "Reorder in one click. Bookmark your favorite restaurants."),
        Page(imageName: "search", headerText: "Search & Filters", bodyText: "Quickly find the food items you like the most."),
        Page(imageName: "pay", headerText: "Apple Pay & Credit Cards", bodyText: "We know you're busy, so you can pay with any method via Stripe.")
    ]
    
    private let previousButton: UIButton = {
           let button  = UIButton(type: .system)
           
           button.setTitle("PREV", for: .normal)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
           button.setTitleColor(.white, for: .normal)
           button.addTarget(self, action: #selector(handlePrevious), for: .touchUpInside)
           
           // this enables autolayout for our textView
           button.translatesAutoresizingMaskIntoConstraints = false
           
           return button
       }()
    
    @objc private func handlePrevious() {
        
        let nextIndex = max(pageControl.currentPage - 1, 0)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
       
       private let nextButton: UIButton = {
            let button  = UIButton(type: .system)
        
            button.setTitle("NEXT", for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
           
           // this enables autolayout for our textView
           button.translatesAutoresizingMaskIntoConstraints = false
           
           return button
       }()
    
    @objc private func handleNext() {
        
        let nextIndex = min(pageControl.currentPage + 1, pages.count  - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
       
    // lazy var gives us access to the members class
       private lazy var pageControl: UIPageControl = {
           let pc = UIPageControl()
           
            pc.currentPage = 0
            pc.numberOfPages = pages.count
            pc.currentPageIndicatorTintColor = .white
            pc.pageIndicatorTintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.3)
           
           return pc
       }()
    
    fileprivate func setupButtonControls() {
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [
            previousButton,
            pageControl,
            nextButton
        ])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        
        pageControl.currentPage = Int(x / view.frame.width)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonControls()
        
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true;
    }
}
