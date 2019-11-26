//
//  Statistics.swift
//  diceGameCN
//
//  Created by Code Nation on 26/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit

var timesPlayed = 0.0
var timesWon = 0.0
var successRate = 0.0

func timesPlayedCounter() {
    timesPlayed += 1
    if (timesPlayed == 1) {
        print("You have had \(Int(timesPlayed)) attempt.")
    }
    else {
        print("You have had \(Int(timesPlayed)) attempts.")
    }
}

func timesWonCounter() {
    timesWon += 1
    
    if (timesWon == 0 ) {
        print("Try agan")
    }
    else {
        print("You are good, you WON \(timesWon) time(s)!")
    }
}

func successRateCounter() {
    successRate = ((timesWon / timesPlayed) * 100).rounded(.toNearestOrEven)
    print("\(successRate)%")
}
