//
//  StatisticViewController.swift
//  diceGameCN
//
//  Created by Code Nation on 26/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//



import UIKit

class StatisticsViewController: UIViewController {
    
    
    @IBOutlet weak var timesPlayedLabel: UILabel!
    
    @IBOutlet weak var timesWonLabel: UILabel!
    
    @IBOutlet weak var sucessRateLabel: UILabel!
    
//    @IBOutlet weak var successRateLabel: UILabel!
    
    func timesPlayedFunc() {
//       timesPlayed += 1
           if (timesPlayed == 1) {
            timesPlayedLabel.text = ("You have had \(Int(timesPlayed)) attempt.")
           }
           else {
              timesPlayedLabel.text =  ("You have had \(Int(timesPlayed)) attempts.")
           }
    }
    
    func timesWonFunc() {
//       timesWon += 1
       
       if (timesWon == 0 ) {
        timesWonLabel.text = ("Try agan")
       }
       else {
        timesWonLabel.text = ("You are good, you WON \(Int(timesWon)) time(s)!")
       }
    }
    
    func successRateFunc() {
        successRate = ((timesWon / timesPlayed) * 100).rounded(.toNearestOrEven)
        sucessRateLabel.text = ("\(successRate)%")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        timesPlayedFunc()
        timesWonFunc()
        successRateFunc()
    }
    

    override func viewDidLoad() {
          super.viewDidLoad()
//     timesPlayedFunc()
//        timesWonFunc()
//        successRateFunc()
      }
}
