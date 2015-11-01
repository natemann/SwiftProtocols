//
//  String Extensions.swift
//  InTheBlack
//
//  Created by Nathan Mann on 9/2/15.
//  Copyright © 2015 Nathan Mann. All rights reserved.
//

import Foundation


protocol NSDecimalNumberConvertable {
    
    func toNSDecimalNumber() -> NSDecimalNumber?
}


extension String : NSDecimalNumberConvertable {
    
    func toNSDecimalNumber() -> NSDecimalNumber? {
        guard let double = Double(self) else { return nil }
        return NSDecimalNumber(double: double)
    }
    
}