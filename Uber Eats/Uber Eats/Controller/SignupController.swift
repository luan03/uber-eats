//
//  SignupController.swift
//  Uber Eats
//
//  Created by Luan Fagundes on 12/04/20.
//  Copyright © 2020 Luan Fagundes. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    private let titleSignupTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Create new account",
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
    
    private let inputNameTextField: UITextField = {
        let textField = UITextField()
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0)) //TODO: how this works?
        
        textField.placeholder = "Full Name"
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
    
    private let inputPhoneTextField: UITextField = {
        let textField = UITextField()
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0)) //TODO: how this works?
        
        textField.placeholder = "Phone Number"
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
    
    private let inputEmailTextField: UITextField = {
        let textField = UITextField()
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0)) //TODO: how this works?
        
        textField.placeholder = "E-mail Address"
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
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 15.0, height: 0.0)) //TODO: how this works?
        
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
    
    private let signupButton: UIButton = {
        let button  = UIButton(type: .system)
        
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 94/255, green: 162/255, blue: 58/255, alpha: 1)
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        
        // this enables autolayout for our textView
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    @objc private func handleSignup() {
        
        // Onboarding
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let swipingController = SwipingController(collectionViewLayout: layout)
        
            self.navigationController?.pushViewController(swipingController, animated: true);
        
    }
    
    private let termsDescriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "By creating an account you agree with our ",
                                             attributes: [
                                                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12),
                                                NSAttributedString.Key.foregroundColor: UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
        ])
        
        attributedText.append(NSAttributedString(string: "Terms of Use.",
                                       attributes: [
                                        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 12),
                                        NSAttributedString.Key.foregroundColor: UIColor(red: 7/255, green: 125/255, blue: 255/255, alpha: 1)
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

  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setupLayout()
      
    }
    
    fileprivate func setupLayout() {
        
        //background
        view.backgroundColor = .white
        
        //text
        view.addSubview(titleSignupTextView)
        titleSignupTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        titleSignupTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleSignupTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        //input
        view.addSubview(inputNameTextField)
        NSLayoutConstraint.activate([
            inputNameTextField.topAnchor.constraint(equalTo: titleSignupTextView.bottomAnchor, constant: 30),
            inputNameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputNameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputNameTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        view.addSubview(inputPhoneTextField)
        NSLayoutConstraint.activate([
            inputPhoneTextField.topAnchor.constraint(equalTo: inputNameTextField.bottomAnchor, constant: 30),
            inputPhoneTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputPhoneTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputPhoneTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        view.addSubview(inputEmailTextField)
        NSLayoutConstraint.activate([
            inputEmailTextField.topAnchor.constraint(equalTo: inputPhoneTextField.bottomAnchor, constant: 30),
            inputEmailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputEmailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputEmailTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        view.addSubview(inputPasswordTextField)
        NSLayoutConstraint.activate([
            inputPasswordTextField.topAnchor.constraint(equalTo: inputEmailTextField.bottomAnchor, constant: 30),
            inputPasswordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            inputPasswordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            inputPasswordTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        // button
        view.addSubview(signupButton)
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: inputPasswordTextField.bottomAnchor, constant: 60),
            signupButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            signupButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            signupButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        
        
        //text
        view.addSubview(termsDescriptionTextView)
        termsDescriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        termsDescriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        termsDescriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
    }
    
}
