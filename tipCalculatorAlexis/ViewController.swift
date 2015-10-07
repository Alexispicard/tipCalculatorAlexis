//
//  ViewController.swift
//  tipCalculatorAlexis
//
//  Created by Marcus Ellison - Vendor on 10/6/15.
//  Copyright © 2015 Alexis Picard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "0.00"
        totalLabel.text = "0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditing(sender: AnyObject) {
        var tipPercentages = [0.15, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
    var billAmount = billText.text!._bridgeToObjectiveC().doubleValue
    var tip = billAmount * tipPercentage
    var total = billAmount + tip
    
    tipLabel.text = "$\(tip)"
    totalLabel.text = "$\(total)"
    
    tipLabel.text = String(format: "$%.2f", tip)
    totalLabel.text = String(format: "$%.2f", total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
    
    view.endEditing(true)
    
    }

}

