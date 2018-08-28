//
//  File.swift
//  SignUp
//
//  Created by jason on 2018/8/27.
//  Copyright © 2018年 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class SignUpInfo: UIViewController {
    
    // name
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    //info
    let infoTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    // info2
    let info2TextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "info"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        //        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    // info3
    let info3TextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "info"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        //        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    let doneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Done", for: .normal)
        button.backgroundColor = UIColor(red: 0.7569, green: 0.7686, blue: 0.7529, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        
//        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
//
        button.isEnabled = false
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
        
    }
    
    fileprivate func setupContentView() {
        view.backgroundColor = .white
        let stackView = UIStackView(arrangedSubviews: [nameTextField, infoTextField, info2TextField, info3TextField, doneButton])
        
        stackView.axis = .vertical
        stackView.spacing = 40
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 140, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 640)
    }
}
