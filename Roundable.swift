//
//  Roundable.swift
//  InTheBlack
//
//  Created by Nathan Mann on 1/25/16.
//  Copyright © 2016 Nathan Mann. All rights reserved.
//

import Foundation


protocol Roundable {
    
    func roundTo(places: Int16) -> NSDecimalNumber
    
}


extension Roundable where Self: NSDecimalNumber {
    
    func roundTo(places: Int16) -> NSDecimalNumber {
        return self.decimalNumberByRoundingAccordingToBehavior(NSDecimalNumberHandler(roundingMode: .RoundPlain, scale: places, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true,raiseOnDivideByZero: true))
    }
    
}


extension NSDecimalNumber: Roundable { }