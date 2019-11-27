//
//  TwoStatisticViewController.swift
//  diceGameCN
//
//  Created by Code Nation on 27/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit

class TwoStatisticViewController: UIViewController {
    
    @IBOutlet weak var oneTimesPlayedLabel: UILabel!
    
    @IBOutlet weak var twoTimesPlayedLabel: UILabel!
    
     @IBOutlet weak var oneTimesWonLabel: UILabel!

    @IBOutlet weak var twoTimesWonLabel: UILabel!

    @IBOutlet weak var oneSuccessRateLabel: UILabel!
    
    @IBOutlet weak var twoSuccessRateLabel: UILabel!


func oneTimesPlayedFunc() {
    if (oneTimesPlayed == 1) {
        oneTimesPlayedLabel.text = ("You have had \(Int(oneTimesPlayed)) attempt.")
    }
    else {
        oneTimesPlayedLabel.text = ("You have had \(Int(oneTimesPlayed)) attempts")
    }
    }
    
    func twoTimesPlayedFunc() {
    if (twoTimesPlayed == 1) {
        twoTimesPlayedLabel.text = ("You have had \(Int(twoTimesPlayed)) attempt.")
    }
    else {
        twoTimesPlayedLabel.text = ("You have had \(Int(twoTimesPlayed)) attempts")
    }
    }
    
    func oneTimesWonFunc() {
        if (oneTimesWon == 0) {
            oneTimesWonLabel.text = ("Try agan")
        }
        else {
            oneTimesWonLabel.text = ("You are good, you WON \(Int(oneTimesWon)) time(s)!")
        }
    }
    
    func twoTimesWonFunc() {
         if (twoTimesWon == 0) {
             twoTimesWonLabel.text = ("Try agan")
         }
         else {
             twoTimesWonLabel.text = ("You are good, you WON \(Int(twoTimesWon)) time(s)!")
         }
     }
    
    func oneSuccessRateFunc() {
        oneSuccessRate = ((oneTimesWon / oneTimesPlayed) * 100).rounded(.toNearestOrEven)
        oneSuccessRateLabel.text = ("\(oneSuccessRate)%")
    }

    

func twoSuccessRateFunc() {
       twoSuccessRate = ((twoTimesWon / twoTimesPlayed) * 100).rounded(.toNearestOrEven)
        twoSuccessRateLabel.text = ("\(twoSuccessRate)%")
   }
    
    func printFunction() {
        oneTimesPlayedCounter()
        twoTimesPlayedCounter()
        oneTimesWonCounter()
        twoTimesWonCounter()
        oneSuccessRateCounter()
        twoSuccessRateCounter()
    }


    override func viewDidAppear(_ animated: Bool) {
           oneTimesPlayedFunc()
           twoTimesPlayedFunc()
           oneTimesWonFunc()
           twoTimesWonFunc()
           oneSuccessRateFunc()
            twoSuccessRateFunc()
        printFunction()
       }
    
    
    
    override func viewDidLoad() {
              super.viewDidLoad()
          }
}
