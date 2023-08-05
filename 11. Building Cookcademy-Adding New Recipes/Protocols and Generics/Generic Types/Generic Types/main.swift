//
//  main.swift
//  Generic Types
//
//  Created by Brandon Kamplain on 7/4/23.
//

struct GameResult<Score: Comparable> {
    let playerOne: String
    let playerTwo: String
    let playerOneScore: Score
    let playerTwoScore: Score
    func printWinner() {
        if playerOneScore > playerTwoScore {
            print("\(playerOne) Wins!")
        } else if playerOneScore < playerTwoScore {
            print("\(playerTwo) Wins!")
        } else {
            print("It's a tie!")
        }
    }
}

let ufcResult = GameResult(playerOne: "Forrest Griffin",
                           playerTwo: "Stephan Bonnar",
                           playerOneScore: 29,
                           playerTwoScore: 28)
ufcResult.printWinner()

let chessResult: GameResult<Double> = GameResult(playerOne: "Boris Spassky",
                                                 playerTwo: "Bobby Fischer",
                                                 playerOneScore: 8.5,
                                                 playerTwoScore: 12.5)
chessResult.printWinner()
