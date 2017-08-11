//
//  ViewController.swift
//  Calculator
//
//  Created by admin on 07/08/2017.
//  Copyright © 2017 Alex Keaveney. All rights reserved.
//

import UIKit

/* This class contains all of the logic for the calculator */

class CalcViewController: UIViewController {

    //Used to hold the different operations
    enum Symbols: String {
        case Divide
        case Multiply
        case Minus
        case Plus
    }
    
    var Symbol: Symbols!        /* holds the current operation*/
    var firstNumber: String!    /* holds the first number in the calculation */
    var secondNumber: String!   /* holds the second number in the calculation */
    var maxDigits = 7           /* limit for the number of digits allowed on screen */
    @IBOutlet weak var CalcDisplay: UILabel! /* label to hold calculator display */
    
    /* This function clears the display */
    @IBAction func ClearCalc(_ sender: Any) {
        
        //sets the calculator text to 0
        CalcDisplay.text = "0"
    
    }
    
    /* This function is called when the % button is pressed */
    @IBAction func DividePressed(_ sender: Any) {
        
        //records the first number in the calculation
        firstNumber = CalcDisplay.text!
        
        //clears the calc display for the next number
        ClearCalc(self)
        
        //sets the Symbol to divide
        Symbol = Symbols.Divide
        
    }
    
    //This function is called when the * button is pressed
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
    
    //This function is called when the = button is pressed
    @IBAction func EqualsPressed(_ sender: Any) {
        
        //checks if a symbol has been set
        if (Symbol != nil) {
            
            //sets second number to calc display
            secondNumber = CalcDisplay.text!
            
            // convert first and second number to floats
            let fNumber = Float(firstNumber!)!
            let sNumber = Float(secondNumber!)!
        
            // checks what operator
            if let symbol = Symbol {
                switch symbol {
                    case .Divide:
                        // Sets the display to the divided result
                        CalcDisplay.text = String(fNumber/sNumber)
                    case .Multiply:
                        // Sets the display to the multiplied result
                        CalcDisplay.text = String(fNumber*sNumber)
                    case .Plus:
                        // Sets the display to the added result
                        CalcDisplay.text = String(fNumber+sNumber)
                    case .Minus:
                        // Sets the display to the subtracted result
                        CalcDisplay.text = String(fNumber-sNumber)
                    default:
                        print("No symbol")
                }
            }
            
            //Sets the symbol to nil for the next calculation
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
    
    /* This function is called on to create a percentage of a number */
    @IBAction func PercentPressed(_ sender: Any) {
        
        //gets the number entered in the display
        var number = Float(CalcDisplay.text!)!
        
        //divides that number by 100 to get a percentage
        number = number/100
        
        //sets the display to the percentage of that number
        CalcDisplay.text = String(number)
    }
    
    // This function is called to use minus numbers
    @IBAction func MinusNumbers(_ sender: Any) {
        
        // Gets the number in the display
        var textNumber = String(CalcDisplay.text!)
        
        // Adds a minus to that number
        textNumber = "-" + textNumber!
        
        //Updates the display with the minus number
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
    
    /* The next eleven functions are used to add number 0-9 and decimal point to the display */
    
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
         AddNumberToInput(number: ".")
    }
    
}

