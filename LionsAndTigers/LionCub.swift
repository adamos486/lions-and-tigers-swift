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
        println("\(name): meow meow")
    }
}