//
//  ViewController.swift
//  TipCalc
//
//  Created by Byron M Wilson on 1/27/20.
//  Copyright © 2020 Byron M Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercents = [0.1 , 0.15 , 0.2]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip =  bill * tipPercents[tipControl.selectedSegmentIndex]
        
        let total =  bill + tip
        
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
    
    }
}

