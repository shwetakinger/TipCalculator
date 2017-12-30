//
//  ViewController.swift
//  tipCalculator
//
//  Created by Shweta Kinger on 12/27/17.
//  Copyright © 2017 Shweta Kinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
<<<<<<< HEAD
=======
        let labelAmt = Double(label.text!) ?? 0
        let cost = total/labelAmt
        costPerPerson.text = String(format: "$%.2f", cost)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //animate the bill text field
        UIView.animate(withDuration:1.3, delay: 0.0, options: [.autoreverse], animations: { () -> Void in
            self.billField.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: nil)
        // retrieve the default tip percentage from UserDefaults
        let defaults = UserDefaults.standard
       
        if defaults.object(forKey: "newDefaultTip") == nil{
            tipControl.selectedSegmentIndex = 1
        }
        if defaults.object(forKey: "newDefaultTip") != nil{
            tipControl.selectedSegmentIndex = defaults.integer(forKey: "newDefaultTip")
        }
        
        //re-calculate tip
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
>>>>>>> aae87b6... Added GIF walkthrough
        
        //re-calculate cost per person
        let labelAmt = Double(label.text!) ?? 0
        let cost = total/labelAmt
        costPerPerson.text = String(format: "$%.2f", cost)
        
    }
}

