//
//  Extension.swift
//  SignUp
//
//  Created by GetHired on 8/27/18.
//  Copyright © 2018 GetHired.Jiacheng. All rights reserved.
//

import UIKit

extension UIView {
    
    
    
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}

extension UIColor {
    static let H292f48 = UIColor(red: 41/255, green: 47/255, blue: 72/255, alpha: 1)
    static let H2f3b6a = UIColor(red: 47/255, green: 59/255, blue: 106/255, alpha: 1)
}

