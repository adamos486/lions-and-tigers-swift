//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Adam Cobb on 6/3/15.
//  Copyright (c) 2015 Adam Cobb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var factLabel: UILabel!
    
    var myTigers: [Tiger] = []
    var myLions: [Lion] = []
    
    var currentIndex = 0
    
    var currentAnimal = (species: "Tiger", index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tonyTheTiger = Tiger()
        tonyTheTiger.name = "Tony"
        tonyTheTiger.age = tonyTheTiger.ageInTigerYearsFromAge(64)//64
        tonyTheTiger.breed = "Cartoon"
        tonyTheTiger.image = UIImage(named: "tony9n.jpg")
        
        tonyTheTiger.chuffNumberOfTimes(5, isLoud: true)
        println(tonyTheTiger.ageInTigerYearsFromAge(tonyTheTiger.age))
        
        self.myImageView.image = tonyTheTiger.image
        self.nameLabel.text = tonyTheTiger.name
        self.ageLabel.text = "\(tonyTheTiger.age)"
        self.breedLabel.text = tonyTheTiger.breed
        self.factLabel.text = tonyTheTiger.randomFact()
        
        self.myTigers.append(tonyTheTiger);
        
        println("My tiger is \(tonyTheTiger.name)")
        println("He's " + "\(tonyTheTiger.age)" + " years old")
        println("He's a " + "\(tonyTheTiger.breed)")
        println("Here's his image: " + "\(tonyTheTiger.image)")
        
        var hobbes = Tiger()
        hobbes.name = "Hobbes"
        hobbes.age = hobbes.ageInTigerYearsFromAge(30)//30
        hobbes.breed = "Cartoon"
        hobbes.image = UIImage(named: "hobbes.gif")
        
        var rajahTiger = Tiger()
        rajahTiger.name = "Rajah"
        rajahTiger.age = rajahTiger.ageInTigerYearsFromAge(23)//23
        rajahTiger.breed = "Cartoon"
        rajahTiger.image = UIImage(named: "Rajah.jpg")
        
        var tigger = Tiger()
        tigger.name = "Tigger"
        tigger.breed = "Cartoon"
        tigger.age = tigger.ageInTigerYearsFromAge(87)//87
        tigger.image = UIImage(named: "tigger4.gif")
        
        self.myTigers += [hobbes, rajahTiger, tigger];
        
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "lion-01.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "lion4.jpg")
        lioness.name = "Sarabi"
        lioness.subspecies = "Barbary"
        
        self.myLions += [lion, lioness]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextBarButtonItemPress(sender: UIBarButtonItem) {
        var randomIndex: Int
        do {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            
        } while self.currentIndex == randomIndex
        
        
        self.currentIndex = randomIndex
        let tigerToBeShown = self.myTigers[randomIndex]
        UIView.transitionWithView(
            self.view,
            duration: 2,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: {
                self.myImageView.image = tigerToBeShown.image
                self.nameLabel.text = tigerToBeShown.name
                self.ageLabel.text = "\(tigerToBeShown.age)"
                self.breedLabel.text = tigerToBeShown.breed
                self.factLabel.text = tigerToBeShown.randomFact()
            },
            completion: {
                (finished: Bool) -> () in
        })
        /*
        myImageView.image = tigerToBeShown.image
        nameLabel.text = tigerToBeShown.name
        ageLabel.text = "\(tigerToBeShown.age)"
        breedLabel.text = tigerToBeShown.breed
        */
    }
    
    func updateAnimal() {
        switch currentAnimal {
        case ("Tiger", _):
            let randomIndex = Int(arc4random_uniform(UInt32(myLions.count)))
            currentAnimal = ("Lion", randomIndex)
        default:
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
        }
    }
}

