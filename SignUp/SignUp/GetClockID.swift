//
//  GetClockID.swift
//  SignUp
//
//  Created by GetHired on 8/31/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

class GetClockID : UIViewController {
    
    let timeClockLabel : UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Time Clock", attributes: [ NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 52)])
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    let bodyView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.borderColor = UIColor.H2f3b6a.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 10
        return view
    }()
    
    let info : UITextView = {
        let info = UITextView()
        info.text = "These Alamofire methods are global within Alamofire so you don’t have to instantiate a class to use them. There are underlying pieces to Alamofire that are classes and structs"
        info.backgroundColor = .white
        info.font = UIFont.boldSystemFont(ofSize: 25)
        return info
    }()
    
    let clockIdTitle: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Clock ID:", attributes: [NSAttributedStringKey.font : 18, NSAttributedStringKey.foregroundColor: UIColor.gray])
        label.attributedText = attributedText
        return label
    }()
    
    let id: UITextView = {
        let label = UITextView()
        let attributedText = NSMutableAttributedString(string: "Clock ID:\n", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 28), NSAttributedStringKey.foregroundColor: UIColor.black])
        attributedText.append(NSMutableAttributedString(string: "A12345", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 30)]))
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    let activeButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        button.backgroundColor = .H2f3b6a
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Activate Clock", for: .normal)
        return button
    }()
    
    let useEmailButton: UIButton = {
        let button = UIButton(type: .system)
    
        // first part string in gray color
        let attributedTitle = NSMutableAttributedString(string: "Setting up by?", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        // append Sign In in Blue Color
        attributedTitle.append(NSAttributedString(string: " Email", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedStringKey.foregroundColor: UIColor(red: 0.2549, green: 0.2784, blue: 0.4392, alpha: 1.0)
            ]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        // triger function to set up clock by Clock ID
        button.addTarget(self, action: #selector(setUpByEmail), for: .touchUpInside)
        return button
    }()
    
    // jump to setup by clock id
    @objc func setUpByEmail() {
       dismiss(animated: true, completion: nil)
    }
    
    @objc func handleSignUp() {
        let nextPage = SignUpInfo()
//        dismiss(animated: false, completion: nil)
        present(nextPage, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    fileprivate func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(timeClockLabel)
        timeClockLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 120, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 60)
        
        view.addSubview(bodyView)
        bodyView.anchor(top: timeClockLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 42, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 0, height: view.frame.height*0.5)
        
        bodyView.addSubview(info)
        info.anchor(top: bodyView.topAnchor, left: bodyView.leftAnchor, bottom: nil, right: bodyView.rightAnchor, paddingTop: 80, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 100)

        
        
        bodyView.addSubview(id)
        id.anchor(top: info.bottomAnchor, left: bodyView.leftAnchor, bottom: nil, right: bodyView.rightAnchor, paddingTop: 50, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 90)
        
        
        
        view.addSubview(activeButton)
        activeButton.anchor(top: bodyView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 40, paddingLeft: 100, paddingBottom: 0, paddingRight: 100, width: 200, height: 80)
        activeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(useEmailButton)
        useEmailButton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
        
        
    }
    
}
