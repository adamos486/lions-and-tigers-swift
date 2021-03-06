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
    var randomFacts:[String] = ["The tiger is the biggest species in the cat family.",
        "Tigers can reach a length of 3.3 meters.",
        "A group of tigers is known as an ambush or streak."
        ]
    
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
    
    func randomFact() -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact: String = randomFacts[randomNumber]
        
//        if randomNumber == 0 {
//            randomFact = "The tiger is the biggest species in the cat family."
//        }
//        else if randomNumber == 1 {
//            randomFact = "Tigers can reach a length of 3.3 meters."
//        }
//        else {
//            randomFact = "A group of tigers is known as an ambush or streak."
//        }
        return randomFact
    }
}