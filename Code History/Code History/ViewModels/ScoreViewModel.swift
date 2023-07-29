//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Brandon Kamplain on 7/24/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
