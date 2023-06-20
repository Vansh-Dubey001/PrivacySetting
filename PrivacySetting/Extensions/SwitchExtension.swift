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
