//
//  SegueHandlerType.swift
//  InTheBlack
//
//  Created by Nathan Mann on 6/12/15.
//  Copyright (c) 2015 Nathan Mann. All rights reserved.
//

import UIKit

//protocol SegueHandlerType {
//    
//    associatedtype SegueIdentifier: RawRepresentable
//    
//}
//
//
//
//
//
//extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
//    
////    func prepareForSegue(segueIdentifier: SegueIdentifier, segue: UIStoryboardSegue, sender: Any?)
//    func performSegueWithIdentifier(_ segueIdentifier: SegueIdentifier, sender: Any?) {
//        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
//    }
//    
//    
//    func segueIdentifierForSegue(_ segue: UIStoryboardSegue) -> SegueIdentifier {
//        guard let identifier = segue.identifier, let segueIdentifier = SegueIdentifier(rawValue: identifier)
//        else {
//            fatalError("Invalid segue identifier \(segue.identifier).")
//        }
//        return segueIdentifier
//    }
//}
