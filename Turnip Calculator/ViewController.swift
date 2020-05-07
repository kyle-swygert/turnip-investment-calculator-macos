//
//  ViewController.swift
//  Turnip Calculator
//
//  Created by Kyle Swygert on 5/6/20.
//  Copyright © 2020 Kyle Swygert. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var turnipPriceTextField: NSTextField!
    
    @IBOutlet weak var turnipSellingTextField: NSTextField!
    
    @IBOutlet weak var numTurnipsBoughtTextField: NSTextField!
    
    @IBOutlet weak var resultsTextField: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // results field will be read only. 
        resultsTextField.isEditable = false
        
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
    @IBAction func calculateButtonClicked(_ sender: NSButton) {
        
        // calculate the stats for the values in the fields.
        
        
        let purchase = Int(turnipPriceTextField.stringValue) ?? -1
        let selling = Int(turnipSellingTextField.stringValue) ?? -1
        let units = Int(numTurnipsBoughtTextField.stringValue) ?? -1
        
        if (purchase > 0 && selling > 0 && units > 0) {
            
            let calcResults = Turnip(purchasePrice: purchase, sellingPrice: selling, unitsPurchased: units)
            
            
            resultsTextField.stringValue = calcResults.generateCalculationResults()
            
            
        } else {
            
            resultsTextField.stringValue = "ERROR: \nNot all the strings that were entered were integers,\nplease try again with whole numbers in all the boxes."
        }
        
        
    }
    
    
}

