//
//  TwoPlayerViewController.swift
//  diceGameCN
//
//  Created by Code Nation on 25/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import Foundation

import UIKit

class TwoPlayerViewController: UIViewController {
    
    // What do we need?
    
    // function to randomly generate a number
    // 21 - win
    // 1 - lose
    
    //MARK: Variables
    var playerOneScore = 0
    var playerTwoScore = 0
    var randomRollIndex = 0
    var playerOneTurn = true
    var playerTwoTurn = false

    var dice = [#imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    //          0   1   2   3   4   5
    
    
    //MARK: outlets
    @IBOutlet weak var playerOneScoreLabel: UILabel!
    @IBOutlet weak var playerTwoScoreLabel: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
     @IBOutlet weak var resetButton: UIButton!
    
    
    // MARK: functions

    @IBAction func buttonFunction(_ sender: Any) {
//        print("I am working.")
            rollLogic()
    }
    
    func rollLogic() {
        randomRollIndex = Int.random(in: 0...5)
        diceImage.image = dice[randomRollIndex]
        print(randomRollIndex)
        
        if (playerOneTurn == true) {
            if(randomRollIndex != 0) {
                playerOneScore += randomRollIndex + 1
                playerOneTurn = false
                playerTwoTurn = true
                playerOneScoreLabel.text = "\(playerOneScore)"
                hasThePlayerWon()
            }
            else {
                playerOneScore = 0
                playerOneScoreLabel.text = "You lost! Try agan"
                playerTwoScore = 0
                 gameOver()
            }
        }
        
        else if (playerTwoTurn == true) {
            if (randomRollIndex != 0) {
                playerTwoScore += randomRollIndex + 1
                playerTwoTurn = false
                playerOneTurn = true
                playerTwoScoreLabel.text = "\(playerTwoScore)"
                hasThePlayerWon()
            }
            else {
                playerTwoScore = 0
                playerTwoScoreLabel.text = "You Lost! Try agan!"
                playerOneScore = 0
                gameOver()
            }
        }
        
    }
    
   
    
    func hasThePlayerWon() {
        if (playerOneScore >= 21) {
        playerOneScoreLabel.text = "You WON"
        playerOneScore = 0
        playerTwoScore = 0
            buttonEnabledFunction()
            resetButton.isHidden = false
        }
        else if (playerTwoScore >= 21) {
             playerTwoScoreLabel.text = "You WON"
        playerOneScore = 0
        playerTwoScore = 0
            buttonEnabledFunction()
            resetButton.isHidden = false
        }
    }
    
    
    @IBAction func function(_ sender: Any) {
       playerOneScore = 0
        playerTwoScore = 0
        playerOneScoreLabel.text = "\(playerOneScore)"
        playerTwoScoreLabel.text = "\(playerTwoScore)"
        buttonEnabledFunction()
        resetButton.isHidden = true
    }
    
    func buttonEnabledFunction() {
        rollButton.setTitle("Press me to play", for: .normal)
        if (rollButton.isEnabled) {
            rollButton.isEnabled = false
        }
        else {
            rollButton.isEnabled = true
        }
        resetButton.isHidden = false
    }
    
    func gameOver() {
        if (randomRollIndex == 0) {
            playerOneScore = 0
            playerTwoScore = 0
            buttonEnabledFunction()
           
        }
    }
    

    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        rollButton.setTitle("Press me", for: .normal)
        resetButton.setTitle("Reset me", for: .normal)
        resetButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    



}

