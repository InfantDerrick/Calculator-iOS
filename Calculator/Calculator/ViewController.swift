//
//  ViewController.swift
//  Calculator
//
//  Created by Infant Derrick Gnanasusairaj on 3/28/19.
//  Copyright © 2019 Infant Derrick Gnanasusairaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

