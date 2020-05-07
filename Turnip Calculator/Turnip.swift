//
//  Turnip.swift
//  Turnip Calculator
//
//  Created by Kyle Swygert on 5/6/20.
//  Copyright © 2020 Kyle Swygert. All rights reserved.
//

import Foundation


class Turnip {
    
    var purchasePrice: Int
    var sellingPrice: Int
    var unitsPurchased: Int
    
    init(purchasePrice: Int, sellingPrice: Int, unitsPurchased: Int) {
        self.purchasePrice = purchasePrice
        self.sellingPrice = sellingPrice
        self.unitsPurchased = unitsPurchased
    }
    
    func calcInitialInvestment() -> Int {
        return purchasePrice * unitsPurchased
    }
    
    func calcPerTurnipGain() -> Int {
        return sellingPrice - purchasePrice
    }
    
    func calcTotalGain() -> Int {
        return calcPerTurnipGain() * unitsPurchased
    }
    
    func calcTotalReturn() -> Int {
        return sellingPrice * unitsPurchased
    }
    
    func calcPercentGain() -> Double {
        let percentGain: Double = (((Double(sellingPrice) - Double(purchasePrice)) / Double(purchasePrice)) * 100)
        
        return percentGain
    }
    
    func generateCalculationResults() -> String {
        return """
        Turnip Investment Results:
        Per Turnip Gain:    \(calcPerTurnipGain())
        Initial Investment: \(calcInitialInvestment())
        Total Return:         \(calcTotalReturn())
        Total Gain:             \(calcTotalGain())
        Percent Gain:        \(String(format: "%.2f", calcPercentGain()))%
        """
    }
    
}
