//
//  NSNumber Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/2/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation

public protocol CurrencyStringConvertable {
    
    func toCurrencyString() -> String
    
}


extension NSNumber: CurrencyStringConvertable {
    
    public func toCurrencyString() -> String {
        let formatter = NumberFormatter()
        
        formatter.numberStyle    = .currency
        formatter.negativeFormat = "-¤#,##0.00"
        return formatter.string(from: self)!
    }
    
}





