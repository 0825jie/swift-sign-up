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
        tf.font = UIFont.systemFont(ofSize: 14)
        
//        tf.addTarget(self, action: #selector(), for: .editingChanged)
        
        return tf
    }()
    
    //password
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
//        tf.addTarget(self, action: #selector(), for: .editingChanged)
        return tf
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor(red: 0.7569, green: 0.7686, blue: 0.7529, alpha: 1.0)
        
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
//        button.isEnabled = false
        
        return button
    }()
    
    @objc func handleSignUp() {
        let nextPage = SignUpInfo()
        present(nextPage, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
    }
    
    fileprivate func setupContentView() {
        view.backgroundColor = .white
        view.addSubview(timeClockLabel)
        timeClockLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 100, paddingLeft: (view.frame.width - 500) / 2, paddingBottom: 0, paddingRight: 0, width: 500, height: 90)
        
        view.addSubview(timeGraphic)
        timeGraphic.anchor(top: timeClockLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 54, paddingLeft: (view.frame.width - 164) / 2, paddingBottom: 0, paddingRight: 0, width: 164, height: 164)
        
        setupInputFields()
        
    }
    
    fileprivate func setupInputFields() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, signUpButton])
        
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.anchor(top: timeGraphic.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 140, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 240)
    }



}

