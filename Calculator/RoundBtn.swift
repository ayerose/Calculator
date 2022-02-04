//
//  RoundBtn.swift
//  Calculator
//
//  Created by Rey on 04.02.22.
//

import UIKit

@IBDesignable
class RoundBtn: UIButton {

    @IBInspectable var roundButton : Bool = false {
        didSet {
            if roundButton == true {
                layer.cornerRadius = frame.height/2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton == true {
            layer.cornerRadius = frame.height/2
        }
    }

}
