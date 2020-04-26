//
//  LoginController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 12/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit


class LoginController: UIViewController {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupForm()
    }
    
    private let titleLoginTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Sign In",
                                             attributes: [
                                                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30),
                                                NSAttributedString.Key.foregroundColor: UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        ])
        
        textView.attributedText = attributedText
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .white
        textView.textAlignment = .left
                
        // this enables autolayout for our textView
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    private let spaceTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "OR",
                                             attributes: [
                                                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22),
                                                NSAttributedString.Key.foregroundColor: UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        ])
        
        textView.attributedText = attributedText
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = .white
        textView.textAlignment = .center
                
        // this enables autolayout for our textView
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    private let inputEmailTextField: UITextField = {
        let textField = UITextField()
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0)) //TODO: how this works?
        
        textField.placeholder = "E-mail or phone number"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.layer.cornerRadius = 30
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 180/255, green: 183/255, blue: 201/255, alpha: 1).cgColor
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.textColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        
        // this enables autolayout for our textView
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let inputPasswordTextField: UITextField = {
        let textField = UITextField()
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0))
        
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.layer.cornerRadius = 30
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 180/255, green: 183/255, blue: 201/255, alpha: 1).cgColor
        textField.leftView = leftView
        textField.leftViewMode = .always
        textField.textColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        
        // this enables autolayout for our textView
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let loginButton: UIButton = {
           let button  = UIButton(type: .system)
           
           button.setTitle("Log In", for: .normal)
           button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
           button.setTitleColor(.white, for: .normal)
           button.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
           button.layer.cornerRadius = 10
           button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
           
           // this enables autolayout for our textView
           button.translatesAutoresizingMaskIntoConstraints = false
           
           return button
       }()
       
       @objc private func handleLogin() {
           
            // Onboarding
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let swipingController = SwipingController(collectionViewLayout: layout)
        
            self.navigationController?.pushViewController(swipingController, animated: true);
       }
    
    private let loginFBButton: UIButton = {
        let button  = UIButton(type: .system)
        
        button.setTitle("Login with Facebook", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 51/255, green: 77/255, blue: 146/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleFBLogin), for: .touchUpInside)
        
        // this enables autolayout for our textView
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func handleFBLogin() {
        
            // Onboarding
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let swipingController = SwipingController(collectionViewLayout: layout)
        
            self.navigationController?.pushViewController(swipingController, animated: true);
    }
    
    private let loginAppleButton: UIButton = {
        let button  = UIButton(type: .custom)
        let icon = UIImage(named: "apple")
        
        button.setTitle("Sign in with Apple", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(handleAppleLogin), for: .touchUpInside)
        button.setImage(icon, for: .normal)
        
        // this will make the image scale properly
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        
        // this enables autolayout for our textView
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func handleAppleLogin() {
        
        // Onboarding
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let swipingController = SwipingController(collectionViewLayout: layout)
    
        self.navigationController?.pushViewController(swipingController, animated: true);
    }
    
    fileprivate func setupForm() {
        
        //input
        view.addSubview(inputEmailTextField)
        NSLayoutConstraint.activate([
            inputEmailTextField.topAnchor.constraint(equalTo: titleLoginTextView.bottomAnchor, constant: 30),
            inputEmailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputEmailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputEmailTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //input
        view.addSubview(inputPasswordTextField)
        NSLayoutConstraint.activate([
            inputPasswordTextField.topAnchor.constraint(equalTo: inputEmailTextField.bottomAnchor, constant: 20),
            inputPasswordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputPasswordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputPasswordTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //button
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: inputPasswordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //text
        view.addSubview(spaceTextView)
        spaceTextView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 60).isActive = true
        spaceTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        spaceTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        //button
        view.addSubview(loginFBButton)
        NSLayoutConstraint.activate([
            loginFBButton.topAnchor.constraint(equalTo: spaceTextView.bottomAnchor, constant: 60),
            loginFBButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            loginFBButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            loginFBButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //button
        view.addSubview(loginAppleButton)
        NSLayoutConstraint.activate([
            loginAppleButton.topAnchor.constraint(equalTo: loginFBButton.bottomAnchor, constant: 20),
            loginAppleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            loginAppleButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            loginAppleButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setupLayout() {
        
        //background
        view.backgroundColor = .white
        
        //text
        view.addSubview(titleLoginTextView)
        titleLoginTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        titleLoginTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleLoginTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
}
