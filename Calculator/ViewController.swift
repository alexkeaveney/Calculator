//
//  ViewController.swift
//  Calculator
//
//  Created by admin on 07/08/2017.
//  Copyright © 2017 Alex Keaveney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum Symbols: String {
        case Divide
        case Multiply
        case Minus
        case Plus
    }
    
    var Symbol: Symbols!
    
    var firstNumber: String!
    var secondNumber: String!
    
    var maxDigits = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var CalcDisplay: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func ClearCalc(_ sender: Any) {
        CalcDisplay.text = "0"
    }
    
    @IBAction func DividePressed(_ sender: Any) {
        
        //records the first number in the calculation
        firstNumber = CalcDisplay.text!
        //clears the calc display for the next number
        ClearCalc(self)
        //sets the Symbol to divide
        Symbol = Symbols.Divide
        
    }
    
    @IBAction func MultiplyPressed(_ sender: Any){
        
        //records the first number in the calculation
        firstNumber = CalcDisplay.text!
        //clears the calc display for the next number
        ClearCalc(self)
        //sets the Symbol to multiply
        Symbol = Symbols.Multiply
        
    }
    
    @IBAction func PlusPressed(_ sender: Any) {
        
        //records the first number in the calculation
        firstNumber = CalcDisplay.text!
        //clears the calc display for the next number
        ClearCalc(self)
        //sets the Symbol to plus
        Symbol = Symbols.Plus
        
    }
    
    @IBAction func EqualsPressed(_ sender: Any) {
        
        if (Symbol != nil) {
            
            //sets second number to calc display
            secondNumber = CalcDisplay.text!
            
            // convert first and second number to floats
            var fNumber = Float(firstNumber!)!
            var sNumber = Float(secondNumber!)!
            
            
            if let symbol = Symbol {
                switch symbol {
                case .Divide:
                    CalcDisplay.text = String(fNumber/sNumber)
                case .Multiply:
                    CalcDisplay.text = String(fNumber*sNumber)
                case .Plus:
                    CalcDisplay.text = String(fNumber+sNumber)
                case .Minus:
                    CalcDisplay.text = String(fNumber-sNumber)
                default:
                    print("none")
                }
            }
            
            Symbol = nil
        }

        
        
    
    }
    
    
    @IBAction func MinusPressed(_ sender: Any) {
        
        //records the first number in the calculation
        firstNumber = CalcDisplay.text!
        //clears the calc display for the next number
        ClearCalc(self)
        //sets the Symbol to minus
        Symbol = Symbols.Minus
        
    }
    
    @IBAction func PercentPressed(_ sender: Any) {
        var number = Float(CalcDisplay.text!)!
        number = number/100
        CalcDisplay.text = String(number)
    }
    
    @IBAction func MinusNumbers(_ sender: Any) {
        
        var textNumber = String(CalcDisplay.text!)
        textNumber = "-" + textNumber!
        CalcDisplay.text = textNumber!
        
    }
    
    func AddNumberToInput(number: String) {
        var textNumber = String(CalcDisplay.text!)
        
        if textNumber == "0" {
            textNumber = number
        }
        else {
            if (textNumber?.characters.count)! <= maxDigits {
                textNumber = textNumber! + number
            }
           
        }
        CalcDisplay.text = textNumber!
    }
    
    func AddDotToInput() {
        CalcDisplay.text = "\(CalcDisplay.text!)."
    }
    
    @IBAction func pressed0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }

    @IBAction func pressed1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }

    @IBAction func pressed2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }

    @IBAction func pressed3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }

    @IBAction func pressed4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }

    @IBAction func pressed5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func pressed6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    
    @IBAction func pressed7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    
    @IBAction func pressed8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func pressed9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    @IBAction func PressedPoint(_ sender: Any) {
        
        AddDotToInput()
        
    }
    
    
    
}

