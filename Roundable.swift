//
//  Roundable.swift
//  InTheBlack
//
//  Created by Nathan Mann on 1/25/16.
//  Copyright © 2016 Nathan Mann. All rights reserved.
//

import Foundation


protocol Roundable {
    
    func roundTo(_ places: Int16) -> NSDecimalNumber
    
}




extension NSDecimalNumber: Roundable {

    func roundTo(_ places: Int16) -> NSDecimalNumber {
        return self.rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: .plain, scale: places, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true,raiseOnDivideByZero: true))
    }

}
