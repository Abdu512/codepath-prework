//
//  ViewController.swift
//  Prework
//
//  Created by Abdullah Baghdadi on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tipPercentageSelection(_ sender: UISlider) {
        // Get tip percentage value from slider
        let tipPercentage = Int(sender.value)
        tipPercentageLabel.text = "\(tipPercentage)" + "%"
        
    }
    
    @IBAction func calculateTip(_ sender: UISlider) {
        // Get bill amount inputted to the text field
        let bill = Double(billAmountTextField.text!) ?? 0
            
        // Calculate total tip (tip * tipPercentage)
        let tipPercentage = Double(Int(sender.value))/100
        let tip = bill * tipPercentage
        let total = bill + tip
        
        //Update tip label amount
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

