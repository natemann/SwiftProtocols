//
//  SegueHandlerType.swift
//  InTheBlack
//
//  Created by Nathan Mann on 6/12/15.
//  Copyright (c) 2015 Nathan Mann. All rights reserved.
//

import UIKit

protocol SegueHandlerType {
    
    typealias SegueIdentifier: RawRepresentable
    
}





extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    
//    func prepareForSegue(segueIdentifier: SegueIdentifier, segue: UIStoryboardSegue, sender: AnyObject?)
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier, sender: AnyObject?) {
        performSegueWithIdentifier(segueIdentifier.rawValue, sender: sender)
    }
    
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        guard let identifier = segue.identifier, segueIdentifier = SegueIdentifier(rawValue: identifier)
        else {
            fatalError("Invalid segue identifier \(segue.identifier).")
        }
        return segueIdentifier
    }
}
