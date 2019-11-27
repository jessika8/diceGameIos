//
//  TwoPlayerStatistics.swift
//  diceGameCN
//
//  Created by Code Nation on 27/11/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit


var oneTimesPlayed = 0.0
var twoTimesPlayed = 0.0

var oneTimesWon = 0.0
var twoTimesWon = 0.0

var oneSuccessRate = 0.0
var twoSuccessRate = 0.0

func oneTimesPlayedCounter() {
    oneTimesPlayed += 1
    if (oneTimesPlayed == 1){
        print("You have had \(Int(oneTimesPlayed)) attempt.")
    }
}

func twoTimesPlayedCounter() {
    twoTimesPlayed += 1
    if (twoTimesPlayed == 1){
        print("You have had \(Int(twoTimesPlayed)) attempt.")
    }
}

func oneTimesWonCounter() {
    oneTimesWon += 1
    if (oneTimesWon == 0) {
        print("Try agan")
    }
    else {
        print("You are good, you Won \(oneTimesWon) time(s)!")
    }
}

func twoTimesWonCounter() {
    twoTimesWon += 1
    if (twoTimesWon == 0) {
        print("Try agan")
    }
    else {
        print("You are good, you Won \(twoTimesWon) time(s)!")
    }
}

func oneSuccessRateCounter() {
   oneSuccessRate = ((oneTimesWon / oneTimesPlayed) * 100).rounded(.toNearestOrEven)
      print("\(oneSuccessRate)%")
}


func twoSuccessRateCounter() {
   twoSuccessRate = ((twoTimesWon / twoTimesPlayed) * 100).rounded(.toNearestOrEven)
      print("\(twoSuccessRate)%")
}
