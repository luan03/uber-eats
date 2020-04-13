//
//  HomeController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 12/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    private let homeImageView: UIImageView = {
        let welcome = UIImage(named: "welcome")
        let imageView = UIImageView(image: welcome)
        
        // this will make the image scale properly
        imageView.contentMode = .scaleAspectFit
        
        // this enables autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let homedescriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Welcome to Uber Eats",
                                             attributes: [
                                                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24),
                                                NSAttributedString.Key.foregroundColor: UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
        ])
        
        attributedText.append(NSAttributedString(string: "\n\n Order food from restaurants around you.",
                                       attributes: [
                                        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
                                        NSAttributedString.Key.foregroundColor: UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        ]))
        
        textView.attributedText = attributedText
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .white
        textView.textAlignment = .center
                
        // this enables autolayout for our textView
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    private let loginButton: UIButton = {
        let button  = UIButton(type: .system)
        
        button.setTitle("Log In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        
        // this enables autolayout for our textView
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func handleLogin() {
        
        // TODO: navigate to the next page
        //let loginController = LoginController()
        //self.navigationController?.pushViewController(loginController, animated: true)
        
        print("navigate now")
    }
    
    private let signupButton: UIButton = {
        let button  = UIButton(type: .system)
        
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor(red: 65/255, green: 70/255, blue: 101/255, alpha: 1), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 180/255, green: 183/255, blue: 201/255, alpha: 1).cgColor
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        
        // this enables autolayout for our textView
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func handleSignup() {
        
        // TODO: navigate to the next page
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupButtonControls()
    }
    
    private func setupLayout() {
        
        //background
        view.backgroundColor = .white
        
        //image
        view.addSubview(homeImageView)
        homeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        homeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        homeImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        homeImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        //text
        view.addSubview(homedescriptionTextView)
        homedescriptionTextView.topAnchor.constraint(equalTo: homeImageView.bottomAnchor, constant: 50).isActive = true
        homedescriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        homedescriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true

    }
    
    fileprivate func setupButtonControls() {
        
        // button
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: homedescriptionTextView.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        view.addSubview(signupButton)
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            signupButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signupButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            signupButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
}
