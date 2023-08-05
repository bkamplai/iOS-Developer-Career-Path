//
//  main.swift
//  Capturing
//
//  Created by Brandon Kamplain on 7/3/23.
//

func createMultiplier(factor: Int) -> () -> Int {
    var value = 1
    let multiplier: () -> Int = {
        value *= factor
        return value
    }
    return multiplier
}

let multiplier = createMultiplier(factor: 3)

print(multiplier())
print(multiplier())
print(multiplier())
