//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Adam Cobb on 6/9/15.
//  Copyright (c) 2015 Adam Cobb. All rights reserved.
//

import Foundation
import UIKit

class LionCub: Lion {
    func rubLionCubsBelly () {
        println("\(name): rub belly, snuggle snuggle, be happy")
    }
    
    override func roar() {
        super.roar()
        println("\(name): meow meow")
    }
    
    override func randomFact() -> String {
        var randomFact: String
        if isAlphaMale {
            randomFact = "Cubs are usually hidden in the dense bush for approximately six weeks."
        }
        else {
            randomFact = "Cubs begin eating meat at about the age of six weeks."
        }
        return randomFact
    }
}