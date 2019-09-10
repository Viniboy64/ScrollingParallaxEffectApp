//
//  UIView.swift
//  ScrollingParallaxEffectApp
//
//  Created by Marcus Vinícius on 09/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

extension UIView {
    convenience init(backgroundColor: UIColor, cornerRadius: CGFloat) {
        self.init()
        
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        
        // This enables cornerRadius to bounds of the class UIView.
        self.layer.masksToBounds = true
        
        // This enables autolayout to class UIView.
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}
