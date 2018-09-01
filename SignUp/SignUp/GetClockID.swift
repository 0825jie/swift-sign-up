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
        view.backgroundColor = .red
        return view
    }()
    
    let info : UITextView = {
        let info = UITextView()
        info.text = "These Alamofire methods are global within Alamofire so you don’t have to instantiate a class to use them. There are underlying pieces to Alamofire that are classes and structs"
        info.backgroundColor = .gray
        return info
    }()
    
    let clockIdTitle: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Clock ID:\n", attributes: [NSAttributedStringKey.font : 18, NSAttributedStringKey.foregroundColor: UIColor.gray])
        label.attributedText = attributedText
        return label
    }()
    
    let id: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "A123456", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedStringKey.foregroundColor: UIColor.gray])
        label.attributedText = attributedText
        return label
    }()
    
    let activeButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        button.backgroundColor = .H2f3b6a
        button.setTitle("Activate Clock", for: .normal)
        return button
    }()
    
    @objc func handleSignUp() {
        let nextPage = SignUpInfo()
        present(nextPage, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    fileprivate func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(timeClockLabel)
        timeClockLabel.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 60)
        
        view.addSubview(bodyView)
        bodyView.anchor(top: timeClockLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 12, paddingLeft: 80, paddingBottom: 0, paddingRight: 80, width: 0, height: view.frame.height*0.6)
        
        bodyView.addSubview(info)
        info.anchor(top: bodyView.topAnchor, left: <#T##NSLayoutXAxisAnchor?#>, bottom: <#T##NSLayoutYAxisAnchor?#>, right: <#T##NSLayoutXAxisAnchor?#>, paddingTop: <#T##CGFloat#>, paddingLeft: <#T##CGFloat#>, paddingBottom: <#T##CGFloat#>, paddingRight: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        
        view.addSubview(activeButton)
        activeButton.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 50)
    }
    
}
