//
//  CornerView.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 2/13/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import UIKit

@IBDesignable class CornerView: UIView{
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet {
            layer.cornerRadius = CGFloat(cornerRadius)
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
}
