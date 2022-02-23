//
//  CustomizedTextView.swift
//  ExchangeRateCaculator
//
//  Created by TBCASoft-Bennett on 2022/2/23.
//

import UIKit

@IBDesignable class CustomizedTextField: UITextField {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
}
