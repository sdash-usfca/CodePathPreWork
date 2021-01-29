//
//  ViewController.swift
//  PreWork
//
//  Created by Sukirti Dash on 1/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControlSegment: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        var billAmount =  0.00
        let tipPercentagesList = [0.15, 0.18, 0.20]
        billAmount = Double(billAmountTextField.text!) ?? 0.00
        
        let tipAmount = billAmount * tipPercentagesList[tipControlSegment.selectedSegmentIndex]
        
        let totalAmount  = billAmount + tipAmount
        
        tipAmountLabel.text = String(tipAmount)
        totalAmountLabel.text = String(totalAmount)
    }
    
}

