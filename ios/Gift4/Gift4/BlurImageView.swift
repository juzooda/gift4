//
//  BluerImageView.swift
//  Gift4
//
//  Created by Rafael Juzo G Oda on 2/14/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

import UIKit

class BlurImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)

        var blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var effectView:UIVisualEffectView = UIVisualEffectView (effect: blur)
        effectView.frame = frame
        
        addSubview(effectView)
        
    }
}

