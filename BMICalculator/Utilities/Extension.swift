//
//  Extension.swift
//  BMICalculator
//
//  Created by Rani Singh on 27/04/20.
//  Copyright © 2020 InnoCric. All rights reserved.
//

import UIKit

extension UIView {
    
    func applyRoundCorner(radius : Float, borderWidth : Float, borderColor : UIColor?) {
        self.layer.masksToBounds = true
        if borderWidth > 0 {
            self.layer.borderWidth = CGFloat(borderWidth)
            self.layer.borderColor = borderColor?.cgColor
        }
        self.layer.cornerRadius = CGFloat(radius)
    }
    
}
