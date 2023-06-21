//
//  SwitchExtension.swift
//  PrivacySetting
//
//  Created by Vansh Dubey on 20/06/23.
//

import Foundation
import UIKit

extension UISwitch {
    func setSize(height: CGFloat = 16, width: CGFloat = 28){
        let standardHeight: CGFloat = 31
        let standardWidth: CGFloat = 51
        
        let heightRatio: CGFloat = height/standardHeight
        let widthRatio: CGFloat = width/standardWidth
        
        transform = CGAffineTransform(scaleX: widthRatio, y: heightRatio)
    }
}

extension UITextField {
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
                                    CGRect(x: 0, y: 10, width: 20, height: 10))
        
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 20, y: 5, width: 30, height: 30))
        iconView.tintColor = .black
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
