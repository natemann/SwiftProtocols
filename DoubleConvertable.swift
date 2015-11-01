//
//  NSDecimalNumberConvertable.swift
//  NalcoOrder
//
//  Created by Nathan Mann on 10/31/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation


protocol DoubleConvertable {
    
    func toDouble() -> Double?
    
}


extension String: DoubleConvertable {
    
    func toDouble() -> Double? {
        //        ordinary number string to double
        if let double = NSNumberFormatter().numberFromString(self)?.doubleValue {
            return double
        }
        else {
            //            currency string to double
            let formatter = NSNumberFormatter()
            
            formatter.numberStyle = .CurrencyStyle
            formatter.negativeFormat = "-¤#,##0.00"
            return formatter.numberFromString(self)?.doubleValue
        }
    }
    
}

