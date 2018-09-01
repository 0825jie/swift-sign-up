//
//  File.swift
//  SignUp
//
//  Created by jason on 2018/8/27.
//  Copyright © 2018年 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class SignUpInfo: UIViewController{
    
    
    // name
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Clock Name"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 18)
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        
        return tf
    }()
    
    //info
    let infoTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Group Using This Clock"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 18)
//        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let remindLabel : UITextView = {
        let label = UITextView()
        let str = "*The selected data will be downloaded on the clock for the offline \n useage and ... .... .. .. .. "
        let attributedText = NSMutableAttributedString(string: str, attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16)])
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    let selectLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Select Identification:", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        label.attributedText = attributedText
        return label
    }()
    
    
    
    let faceIdView : UIView = {
        let vi = UIView()
        vi.layer.borderWidth = 1
       
//        vi.backgroundColor = .blue
        vi.layer.borderColor = UIColor.H292f48.cgColor
        vi.layer.cornerRadius = CGFloat(10)
        return vi
    }()
    
    
    
    let PINKeyView : UIView = {
        let vi = UIView()
//        vi.backgroundColor = .yellow
       
        vi.layer.borderWidth = 1
        vi.layer.borderColor = UIColor.H292f48.cgColor
        vi.layer.cornerRadius = CGFloat(10)
        return vi
    }()
    
    let badgeView : UIView = {
        let vi = UIView()
        
//        vi.backgroundColor = .red
        vi.layer.borderWidth = 1
        vi.layer.borderColor = UIColor.H292f48.cgColor
        vi.layer.cornerRadius = CGFloat(10)
        return vi
    }()
    
    
    
    let FaceIdLabel : UILabel = {
        let label = UILabel()
//        label.backgroundColor = .gray
        let attributedText = NSMutableAttributedString(string: "Face ID", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)])
        label.attributedText = attributedText
        return label
    }()
    
    let PINKeyLabel : UILabel = {
        let label = UILabel()
//        label.backgroundColor = .gray
        let attributedText = NSMutableAttributedString(string: "PIN Key", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)])
        label.attributedText = attributedText
        return label
    }()
    
    let badgeLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Proximity Badge", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)])
        label.attributedText = attributedText
        return label
    }()
    
    
    
    let faceSwitch : UISwitch = {
        let st = UISwitch()
        return st
    }()
    
    let PinKeySwitch : UISwitch = {
        let st = UISwitch()
        return st
    }()
    
    let badgeSwitch : UISwitch = {
        let st = UISwitch()
        return st
    }()
    
    let doneButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Done", for: .normal)
        button.backgroundColor = UIColor(red: 0.7569, green: 0.7686, blue: 0.7529, alpha: 1.0)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
//        button.isEnabled = false
        
        return button
    }()
    
    @objc func handleLogin() {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
        
    }
    
    fileprivate func setupContentView() {
        view.backgroundColor = .white
        let stackView = UIStackView(arrangedSubviews: [nameTextField, infoTextField, remindLabel])
        
        stackView.axis = .vertical
        stackView.spacing = 40
        stackView.distribution = .fillEqually
        
        view.addSubview(stackView)
        stackView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 140, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: 360)
        
        
        view.addSubview(faceIdView)
        faceIdView.anchor(top: stackView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 8, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 200, height: 80)
        
        faceIdView.addSubview(FaceIdLabel)
        FaceIdLabel.anchor(top: faceIdView.topAnchor, left: faceIdView.leftAnchor, bottom: faceIdView.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 18, paddingBottom: 5, paddingRight: 0, width: 200, height: 0)
        
        faceIdView.addSubview(faceSwitch)
        faceSwitch.centerYAnchor.constraint(equalTo: faceIdView.centerYAnchor).isActive = true
        faceSwitch.anchor(top: nil, left: nil, bottom: nil, right: faceIdView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 18, width: 0, height: 0)
        
        view.addSubview(PINKeyView)
        
        PINKeyView.anchor(top: faceIdView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: 80)
        
        PINKeyView.addSubview(PINKeyLabel)
        
        PINKeyLabel.anchor(top: PINKeyView.topAnchor, left: PINKeyView.leftAnchor, bottom: PINKeyView.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 18, paddingBottom: 5, paddingRight: 0, width: 200, height: 0)
        
        PINKeyView.addSubview(PinKeySwitch)
        PinKeySwitch.centerYAnchor.constraint(equalTo: PINKeyView.centerYAnchor).isActive = true
        PinKeySwitch.anchor(top: nil, left: nil, bottom: nil, right: PINKeyView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 18, width: 0, height: 0)
        
//        view.addSubview(badgeView)
//        badgeView.anchor(top: PINKeyView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 8, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: 80)
//        
//        badgeView.addSubview(badgeLabel)
//        badgeLabel.anchor(top: badgeView.topAnchor, left: badgeView.leftAnchor, bottom: badgeView.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 18, paddingBottom: 5, paddingRight: 0, width: 200, height: 0)
//        
//        badgeView.addSubview(badgeSwitch)
//        badgeSwitch.centerYAnchor.constraint(equalTo: badgeView.centerYAnchor).isActive = true
//        badgeSwitch.anchor(top: nil, left: nil, bottom: nil, right: badgeView.rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 5, paddingRight: 18, width: 0, height: 0)
//        
        
        view.addSubview(doneButton)
        doneButton.anchor(top: PINKeyView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: 80)
        
        
    }
}
