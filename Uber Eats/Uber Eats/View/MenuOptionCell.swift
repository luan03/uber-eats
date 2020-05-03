//
//  MenuOptionCell.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 26/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    //MARK: - Properties
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let descriptionText: UILabel = {
        let description = UILabel()
        description.textColor = .white
        description.font = UIFont.systemFont(ofSize: 16)
        description.text = "sample text"
        return description
    }()
    
    //MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        selectionStyle = .none
        
        addSubview(iconImageView)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(descriptionText)
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 12).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Hanlders
}
