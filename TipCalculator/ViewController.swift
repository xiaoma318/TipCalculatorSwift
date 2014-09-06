//
//  ViewController.swift
//  TipCalculator
//
//  Created by Cheng Ma on 9/3/14.
//  Copyright (c) 2014 Charlie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var eachTipLabel: UILabel!
    @IBOutlet weak var eachTotalLabel: UILabel!
    
    @IBOutlet weak var peopleSelector: UISegmentedControl!
    @IBOutlet weak var rateSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEdit(sender: AnyObject) {
        updateValue()
    }

    @IBAction func onTap(sender: AnyObject) {
       view.endEditing(true)
    }

    @IBAction func onNumChange(sender: AnyObject) {
        updateValue()
    }
    
    @IBAction func onRateChange(sender: AnyObject) {
        updateValue()
    }
    func updateValue(){
        var bill = NSString(string: billField.text).doubleValue
        var rate:Double
        var numOfPerson=(Double) (peopleSelector.selectedSegmentIndex+1)
        
        switch(rateSelector.selectedSegmentIndex){
        case 0:
            rate=0.1
        case 1:
            rate=0.15
        case 2:
            rate=0.2
        case 3:
            rate=0.25
        default:
            rate=0.1
        }
        
        var tip = bill * rate
        var total = bill + tip
        var eachTip = tip/numOfPerson
        var eachTotal = total/numOfPerson
        
       
        tipLabel.text=NSString(format: "%.2f", tip)
        totalLabel.text=NSString(format: "%.2f", total)
        eachTipLabel.text=NSString(format: "%.2f", eachTip)
        eachTotalLabel.text=NSString(format: "%.2f", eachTotal)
        
    }
    
    


}

