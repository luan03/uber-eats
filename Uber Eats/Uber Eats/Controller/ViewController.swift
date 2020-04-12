//
//  ViewController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 11/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    let browseImageView: UIImageView = {
//        let browse = UIImage(named: "browse")
//        let imageView = UIImageView(image: browse)
//
//        // this will make the image scale properly in case o rotate the device
//        imageView.contentMode = .scaleAspectFit
//
//        // this enables autolayout for our imageView
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        return imageView
//    }()
    
//    let descriptionTextView: UITextView = {
//        let textView = UITextView()
//        let text = NSMutableAttributedString(string: "Browse Restaurants",
//                                             attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24)])
//
//        text.append(NSAttributedString(string: "\n\n Welcome to Uber Eats! Login and check out delicious food from hundreds of restaurants around you.",
//                                       attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)]))
//
//        textView.attributedText = text
//        textView.textAlignment = .center
//        textView.isEditable = false
//        textView.isScrollEnabled = false
//        textView.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 0.3)
//        textView.textColor = .white
//
//        // this enables autolayout for our textView
//        textView.translatesAutoresizingMaskIntoConstraints = false
//
//        return textView
//    }()
    
//    private let previousButton: UIButton = {
//        let button  = UIButton(type: .system)
//        
//        button.setTitle("PREV", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        button.setTitleColor(.white, for: .normal)
//        
//        // this enables autolayout for our textView
//        button.translatesAutoresizingMaskIntoConstraints = false
//        
//        return button
//    }()
//    
//    private let nextButton: UIButton = {
//        let button  = UIButton(type: .system)
//        button.setTitle("NEXT", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        
//        button.setTitleColor(.white, for: .normal)
//        
//        // this enables autolayout for our textView
//        button.translatesAutoresizingMaskIntoConstraints = false
//        
//        return button
//    }()
//    
//    let pageControl: UIPageControl = {
//        let pc = UIPageControl()
//        
//        pc.currentPage = 0
//        pc.numberOfPages = 4
//        pc.currentPageIndicatorTintColor = .white
//        pc.pageIndicatorTintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.3)
//        
//        return pc
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setupButtonControls()
        //setupLayout()
    }
    
//    fileprivate func setupButtonControls() {
//        
//        let bottomControlsStackView = UIStackView(arrangedSubviews: [
//            previousButton,
//            pageControl,
//            nextButton
//        ])
//        
//        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
//        bottomControlsStackView.distribution = .fillEqually
//        
//        view.addSubview(bottomControlsStackView)
//        
//        NSLayoutConstraint.activate([
//            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 150)
//        ])
//        
//    }
    
    //private func setupLayout() {
        
        //background
//        view.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
        
//        // image
//        view.addSubview(browseImageView)
//        browseImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        browseImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
//        browseImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
//        browseImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
//
//        //text
//        view.addSubview(descriptionTextView)
//        descriptionTextView.topAnchor.constraint(equalTo: browseImageView.bottomAnchor, constant: 50).isActive = true
//        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
//        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
    //}
}

