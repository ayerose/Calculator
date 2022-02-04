//
//  ViewController.swift
//  Calculator
//
//  Created by Soreya Koura on 04.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // show result
    @IBOutlet weak var resultLabel: UILabel!
    
    var userIsTyping : Bool = false
    var decimalusing : Bool = false
    var firstNumber : Double =  0.0
    var secondNumber : Double = 0.0
    var result : Double = 0.0
    var choosingOperator : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func numberButton_Tapped(_ sender: RoundBtn) {
       var key =  sender.currentTitle!
        
        if userIsTyping == true {
            if decimalusing == true && key == "." {
                key = ""
            }
            resultLabel.text = resultLabel.text! + key
        } else {
            resultLabel.text = key
            userIsTyping = true
        }
        if key == "." {
            decimalusing = true
        }
        
    }
    
    
    
    @IBAction func equalBtn_Tapped(_ sender: RoundBtn) {
    }
    
    
    
    @IBAction func clearBtn_Tapped(_ sender: RoundBtn) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        choosingOperator = ""
        resultLabel.text = "0"
        decimalusing = false
    }
    
    
    
    
    @IBAction func operationsBtn_Tapped(_ sender: RoundBtn) {
    }
}

