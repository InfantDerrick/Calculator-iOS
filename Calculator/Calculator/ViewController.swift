//
//  ViewController.swift
//  Calculator
//
//  Created by Infant Derrick Gnanasusairaj on 3/28/19.
//  Copyright © 2019 Infant Derrick Gnanasusairaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storedNumber: Double = 0
    var newStoredNumber: Bool = false
    var numberOnScreen: Double = 0
    var operation: Int = 0
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag)
        numberOnScreen = Double(label.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if newStoredNumber{
            if(operation == 13){
                storedNumber /= numberOnScreen
            }else if operation == 14 {
                storedNumber *= numberOnScreen
            }else if operation == 15{
                storedNumber -= numberOnScreen
            }else if operation == 16{
                storedNumber += numberOnScreen
            }
        }
        if label.text != "" && sender.tag != 10 && sender.tag != 17 {
            if sender.tag == 11 {
                numberOnScreen = numberOnScreen * 0.01
                label.text = String(numberOnScreen)
            }else if(sender.tag == 12){
                numberOnScreen = numberOnScreen * numberOnScreen
                label.text = String(numberOnScreen)
            }else{
                if !newStoredNumber{
                    storedNumber = numberOnScreen
                    newStoredNumber = true
                }
                label.text = ""
                numberOnScreen = 0
                operation = sender.tag
            }
        }else if sender.tag == 10 {
            storedNumber = 0
            numberOnScreen = 0
            newStoredNumber = false
            label.text = ""
        }else if sender.tag == 17{
            label.text = String(storedNumber)
            numberOnScreen = storedNumber
            newStoredNumber = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

