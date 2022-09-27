//
//  Random color.swift
//  fak
//
//  Created by Admin on 27.09.22.
//

import UIKit
func  randomColor(occuredColor: UIView) -> UIColor {
    let red = CGFloat.random(in: 0...1)
    let green = CGFloat.random(in: 0...1)
    let blue = CGFloat.random(in: 0...1)
    let randomColor = UIColor(red: red, green: blue, blue: green, alpha: 1)
    
    occuredColor.layer.borderWidth = 1
    occuredColor.layer.borderColor = UIColor.white.cgColor
    return randomColor
}
