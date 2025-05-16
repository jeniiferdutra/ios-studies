//
//  UIView + Extension.swift
//  AppBackFront
//
//  Created by Jenifer Rocha on 14/05/25.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadius: Double, typeCorners: CACornerMask) {
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.clipsToBounds = true
        self.layer.maskedCorners = typeCorners
    }
}
