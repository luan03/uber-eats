//
//  PageCell.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 11/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    var page: Page? {
        didSet {
            
            guard let unwrappedPage = page else { return }
            
            browseImageView.image = UIImage(named: unwrappedPage.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.headerText,
                                                 attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24)])
            
            attributedText.append(NSAttributedString(string: "\n\n \(unwrappedPage.bodyText)",
                                           attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)]))
        
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textColor = .white
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let browseImageView: UIImageView = {
        let browse = UIImage(named: "browse")
        let imageView = UIImageView(image: browse)
        
        // this will make the image scale properly
        imageView.contentMode = .scaleAspectFit
        
        // this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let descriptionTextView: UITextView = {
        // TODO: Is it possible to remove this duplicated code?
           let textView = UITextView()
           let attributedText = NSMutableAttributedString(string: "Browse Restaurants",
                                                attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24)])
           
           attributedText.append(NSAttributedString(string: "\n\n Welcome to Uber Eats! Login and check out delicious food from hundreds of restaurants around you.",
                                          attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)]))
           
           textView.attributedText = attributedText
           textView.isEditable = false
           textView.isScrollEnabled = false
           textView.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 0.3)
           
           
           // this enables autolayout for our textView
           textView.translatesAutoresizingMaskIntoConstraints = false
           
           return textView
       }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    private func setupLayout() {
        
        backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
        
        addSubview(browseImageView)
        // TODO: change browseImageView to a more generic name
        browseImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        browseImageView.topAnchor.constraint(equalTo: topAnchor, constant: 200).isActive = true
        browseImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        browseImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: browseImageView.bottomAnchor, constant: 50).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -15).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
