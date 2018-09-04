//
//  ViewController.swift
//  SignUp
//
//  Created by GetHired on 8/27/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let timeClockLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Time Clock", attributes: [ NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 52)])
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    let timeGraphic : UIImageView = {
        let image = UIImageView.init(image: #imageLiteral(resourceName: "clock"))
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    // email input
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 18)
        
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    //password
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 18)
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    @objc func handleTextInputChange() {
        let isFormValid = emailTextField.text?.isEmpty == false  && passwordTextField.text?.isEmpty == false
        
        if isFormValid {
            signUpButton.isEnabled = true
            signUpButton.backgroundColor = .H2f3b6a
        } else {
            signUpButton.isEnabled = false
            signUpButton.backgroundColor = UIColor(red: 0.6392, green: 0.702, blue: 0.8196, alpha: 1.0)
        }
    }
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .H2f3b6a
        
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
//        button.isEnabled = false
        
        return button
    }()
    
    let useClockIDButton: UIButton = {
        let button = UIButton(type: .system)
        
        // first part string in gray color
        let attributedTitle = NSMutableAttributedString(string: "Setting up by?", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        // append Sign In in Blue Color
        attributedTitle.append(NSAttributedString(string: " Clock ID", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor(red: 0.2549, green: 0.2784, blue: 0.4392, alpha: 1.0)
            ]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        // triger function to set up clock by Clock ID
        button.addTarget(self, action: #selector(setUpByClockID), for: .touchUpInside)
        return button
    }()
    
    // jump to setup by clock id
    @objc func setUpByClockID() {
        let getClockID = GetClockID()
        self.present(getClockID, animated: true, completion: nil)
    }
    
    @objc func handleSignUp() {
        let nextPage = SignUpInfo()
        present(nextPage, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
        print(view.frame.width)
    }
    
    fileprivate func setupContentView() {
        view.backgroundColor = .white
        view.addSubview(timeClockLabel)
        timeClockLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: (view.frame.width - 500) / 2, paddingBottom: 0, paddingRight: 0, width: 500, height: 90)
        
        view.addSubview(timeGraphic)
        timeGraphic.anchor(top: timeClockLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 54, paddingLeft: (view.frame.width - 164) / 2, paddingBottom: 0, paddingRight: 0, width: 164, height: 164)
        
        setupInputFields()
        
        view.addSubview(useClockIDButton)
        useClockIDButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        
    }
    
    fileprivate func setupInputFields() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, signUpButton])
        
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.anchor(top: timeGraphic.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: 260)
    }



}

