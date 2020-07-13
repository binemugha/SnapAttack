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
        }
    }
    
    @objc func updateTimer() {
        timerInt -= 1
        timeLabel.text = String("Time: \(timerInt)")
        
        if timerInt == 0 {
            timer.invalidate()
        }
    }
}

