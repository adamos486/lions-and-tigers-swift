//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Adam Cobb on 6/9/15.
//  Copyright (c) 2015 Adam Cobb. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar() {
        println("\(name): roar roar")
    }
    
    func changeToAlphaMale() {
        self.isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact: String
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likely to attract females."
        }
        else {
            randomFact = "Female lionesses form the stable social unit and do not tolerate outside females."
        }
        return randomFact
    }
}