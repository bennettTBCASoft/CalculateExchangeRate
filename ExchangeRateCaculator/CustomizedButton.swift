//
//  CustomizedButton.swift
//  ExchangeRateCaculator
//
//  Created by TBCASoft-Bennett on 2022/2/18.
//

import UIKit

@IBDesignable class CustomizedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
