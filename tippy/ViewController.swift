//
//  ViewController.swift
//  tippy
//
//  Created by john Carchi on 9/17/16.
//  Copyright © 2016 john Carchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        let tip_field = Double(tipField.text!) ?? 0
        let tip_percentage = tip_field/100.0
        let  tip = bill * tip_percentage
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total)
    }
    
 
}

