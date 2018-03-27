//  ViewController.swift
//  Dice
//  Created by Joshua Barrios on 3/27/18.
//  Copyright © 2018 Joshua Barrios. All rights reserved.

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    //IBOutlet means that the appearance is changed
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    // IBAction means that the UI element is interacted with
    @IBAction func rollBttnPressed(_ sender: UIButton) {
        //random generator... arc4random_uniform
        //type catsing into int
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        //diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

