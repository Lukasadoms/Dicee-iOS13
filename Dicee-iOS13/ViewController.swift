//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ctrl + drag from storyboard toView Controller
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // here equals to image literall, select an image from assets
    let imageArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // .randomElement looks at elements in array and picks random
        diceImageView1.image = imageArray.randomElement()
        
        // Int.random picks a random from a range of Ints
        diceImageView2.image = imageArray[Int.random(in: 0...5)]
        
    }
    
    
}

