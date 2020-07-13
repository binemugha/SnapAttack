//
//  ViewController.swift
//  SnapAttack
//
//  Created by Benjamin Inemugha on 08/07/2020.
//  Copyright © 2020 Techelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstCard: UIImageView!
    @IBOutlet weak var secondCard: UIImageView!
    
    @IBOutlet weak var startGameButton: UIButton!
    
    var timer = Timer()
    var cardTimer = Timer()
    var timerInt = 20
    var scoreInt = 0
    var gameMode = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startGameButtonWasPressed(_ sender: Any) {
        print("Button Pressed")
        
        if timerInt == 20{
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            cardTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCards), userInfo: nil, repeats: true)
        }
    }
    
    @objc func updateTimer() {
        timerInt -= 1
        timeLabel.text = String("Time: \(timerInt)")
        
        if timerInt == 0 {
            timer.invalidate()
        }
    }
    
    @objc func updateCards() {
        
        let cardList = ["ace_of_hearts","2_of_hearts","3_of_hearts","4_of_hearts","5_of_hearts","6_of_hearts","7_of_hearts","8_of_hearts","9_of_hearts","10_of_hearts"]
        
        let random1 = Int(arc4random_uniform(UInt32(cardList.count)))
        firstCard.image = UIImage(named: cardList[random1])
        
        let random2 = Int(arc4random_uniform(UInt32(cardList.count)))
        secondCard.image = UIImage(named: cardList[random2])
    }
}

