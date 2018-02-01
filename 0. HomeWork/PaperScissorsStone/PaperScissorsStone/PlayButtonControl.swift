//
//  PlayButtonClass.swift
//  PaperScissorsStone
//
//  Created by James on 2018/2/1.
//  Copyright © 2018年 James C. All rights reserved.
//

import UIKit

@IBDesignable class PlayButtonControl: UIButton {

    @IBInspectable var ImageContentMode: UIViewContentMode = .scaleAspectFit {
        didSet {
            self.imageView?.contentMode = newValue
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: <#T##CGRect#>)
    }
    
    
}
