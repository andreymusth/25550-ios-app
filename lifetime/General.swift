//
//  General.swift
//  lifetime
//
//  Created by Andrey on 06/08/2019.
//  Copyright © 2019 Latitude Apps. All rights reserved.
//

import Foundation
import UIKit

func applyGradientBackground(rootView: UIView) {
    let gradient: CAGradientLayer = CAGradientLayer()
    
    let colorDelimiter = 255.0
    let startColor = UIColor(
        red: CGFloat(35.0 / colorDelimiter),
        green: CGFloat(25.0 / colorDelimiter),
        blue: CGFloat(131.0  / colorDelimiter),
        alpha: CGFloat(1.0)
    ).cgColor
    
    let endColor = UIColor(
        red: CGFloat(173.0 / colorDelimiter),
        green: CGFloat(15.0 / colorDelimiter),
        blue: CGFloat(200.0 / colorDelimiter),
        alpha: CGFloat(1.0)
    ).cgColor
    
    gradient.colors = [startColor, endColor]
    gradient.frame = rootView.bounds
    rootView.layer.insertSublayer(gradient, at: 0)
}
