//
//  Ex02ViewController.swift
//  D00
//
//  Created by Liudmila Russu on 4/17/17.
//  Copyright © 2017 Liudmila Russu. All rights reserved.
//

import UIKit

class Ex02ViewController: UIViewController {

    @IBOutlet private weak var display: UILabel!
  
    private var isTypingStart = false
    
    @IBAction private func printDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if isTypingStart
        {
            let textInDisplay = display.text!
            display.text = textInDisplay + digit
        } else {
             display.text = digit
            isTypingStart = true
        }
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction private func doOperation(_ sender: UIButton) {
        if isTypingStart
        {
            brain.setOperand(operand: displayValue)
        }
        isTypingStart = false
        if let nameOperation = sender.currentTitle
        {
            brain.performOperation(symbol: nameOperation)
        }
        displayValue = brain.result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
