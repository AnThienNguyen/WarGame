//
//  ViewController.swift
//  War
//
//  Created by An Nguyen on 9/25/15.
//  Copyright © 2015 TechMeColor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //cards
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var seconCardImageView: UIImageView!
    
    //play button
    @IBOutlet weak var playRoundButton: UIButton!
    
    //background
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    //card array
    var cardNamesArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    //scores
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    var playerTotal = 0
    var enemyTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        //Using Arrays
        //gets first random number and converts to string
        let firstRandom:Int = Int(arc4random_uniform(13))
        let firstCard:String = self.cardNamesArray[firstRandom]
        
        //gets second random number and converts to string
        let secondRandom:Int = Int(arc4random_uniform(13))
        let secondCard:String = self.cardNamesArray[secondRandom]
        
        //changes image
        self.firstCardImageView.image = UIImage(named: firstCard)
        self.seconCardImageView.image = UIImage(named: secondCard)

        //checks value of cards
        if (firstRandom == secondRandom)
        {
            //equal
        }
        else if (firstRandom > secondRandom)
        {
            playerTotal += 1
            self.playerScore.text = String(playerTotal)
        }
        else
        {
            enemyTotal += 1
            self.enemyScore.text = String(enemyTotal)
        }
    }
    
    //resets scores
    @IBAction func restartButton(_ sender: UIButton) {
        playerTotal = 0
        self.playerScore.text = String(playerTotal)
        
        enemyTotal = 0
        self.enemyScore.text = String(enemyTotal)
        
        //resets card images
        self.firstCardImageView.image = UIImage(named: "back")
        self.seconCardImageView.image = UIImage(named: "back")
    }
    

}

