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
        return Double(self)
    }
    
}
