//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Adam Cobb on 6/3/15.
//  Copyright (c) 2015 Adam Cobb. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff() {
        println("\(name): chuff chuff")
    }
    
    func chuff(numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            }
            else {
                println("\(name): purr purr")
            }
        }
    }
    
    func ageInTigerYearsFromAge(regularAge: Int) -> Int  {
        let newAge = regularAge * 3
        return newAge
    }
}