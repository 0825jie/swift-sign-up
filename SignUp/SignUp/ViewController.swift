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
        let attributedText = NSMutableAttributedString(string: "Time Clock", attributes: [ NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 32)])
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    let timeGraphic : UIImageView = {
        let image = UIImageView.init(image: #imageLiteral(resourceName: "clock"))
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let emailField : UITextField = {
        let field = UITextField()
        let attributedPlaceholder = NSAttributedString(string: "Email:", attributes: [NSAttributedStringKey.foregroundColor : UIColor(red: 0.7569, green: 0.7686, blue: 0.7529, alpha: 1.0).cgColor])
        field.attributedPlaceholder = attributedPlaceholder
        return field
    }()
    
    let passwordField: UITextField = {
        let field = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "Email:", attributes: [NSAttributedStringKey.foregroundColor : UIColor(red: 0.7569, green: 0.7686, blue: 0.7529, alpha: 1.0).cgColor])
        field.attributedPlaceholder = attributedPlaceholder
        return field
    }()
    
    let signUpButton : UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .H2f3b6a
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
    }
    
    fileprivate func setupContentView() {
        view.backgroundColor = .white
        view.addSubview(timeClockLabel)
        timeClockLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 60, paddingLeft: (view.frame.width - 300) / 2, paddingBottom: 0, paddingRight: 0, width: 300, height: 50)
        
        view.addSubview(timeGraphic)
        timeGraphic.anchor(top: timeClockLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 24, paddingLeft: (view.frame.width - 64) / 2, paddingBottom: 0, paddingRight: 0, width: 72, height: 72)
        
        
        
        setStackView()
       

//        view.addSubview(passwordField)
//        passwordField.anchor(top: emailField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: view.frame.width*0.14, paddingBottom: 0, paddingRight: 0, width: view.frame.width*0.72, height: 30)

        view.addSubview(signUpButton)
        signUpButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor , right: nil, paddingTop: 36, paddingLeft: view.frame.width*0.22, paddingBottom: 70, paddingRight: 0, width: view.frame.width*0.56, height: 42)

        
    }
    
    fileprivate func setStackView() {
        let stackView = UIStackView(arrangedSubviews: [emailField, passwordField])
        stackView.axis = .vertical
        
        
//         emailField.anchor(top: nil, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 24, paddingLeft: view.frame.width*0.14, paddingBottom: 0, paddingRight: 0, width: view.frame.width*0.72, height: 30)
//
//        passwordField.anchor(top: emailField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: view.frame.width*0.14, paddingBottom: 0, paddingRight: 0, width: view.frame.width*0.72, height: 30)
    }



}

