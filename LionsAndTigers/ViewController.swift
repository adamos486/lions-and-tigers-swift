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
    
    var myTigers: [Tiger] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var tonyTheTiger = Tiger()
        tonyTheTiger.name = "Tony"
        tonyTheTiger.age = 64
        tonyTheTiger.breed = "Cartoon"
        tonyTheTiger.image = UIImage(named: "tony9n.jpg")
        
        myImageView.image = tonyTheTiger.image
        nameLabel.text = tonyTheTiger.name
        ageLabel.text = "\(tonyTheTiger.age)"
        breedLabel.text = tonyTheTiger.breed
        
        myTigers.append(tonyTheTiger);
        
        println("My tiger is \(tonyTheTiger.name)")
        println("He's " + "\(tonyTheTiger.age)" + " years old")
        println("He's a " + "\(tonyTheTiger.breed)")
        println("Here's his image: " + "\(tonyTheTiger.image)")
        
        
        var hobbes = Tiger()
        hobbes.name = "Hobbes"
        hobbes.age = 30
        hobbes.breed = "Cartoon"
        hobbes.image = UIImage(named: "hobbes.gif")
        
        var rajahTiger = Tiger()
        rajahTiger.name = "Rajah"
        rajahTiger.age = 23
        rajahTiger.breed = "Cartoon"
        rajahTiger.image = UIImage(named: "Rajah.jpg")
        
        var tigger = Tiger()
        tigger.name = "Tigger"
        tigger.breed = "Cartoon"
        tigger.age = 87
        tigger.image = UIImage(named: "tigger4.gif")
        
        myTigers += [hobbes, rajahTiger, tigger];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPress(sender: UIBarButtonItem) {
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tigerToBeShown = myTigers[randomIndex]
        
        myImageView.image = tigerToBeShown.image
        nameLabel.text = tigerToBeShown.name
        ageLabel.text = "\(tigerToBeShown.age)"
        breedLabel.text = tigerToBeShown.breed
    }
}

