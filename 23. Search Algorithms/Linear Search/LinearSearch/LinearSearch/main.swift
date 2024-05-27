//
//  main.swift
//  LinearSearch
//
//  Created by Brandon Kamplain on 5/27/24.
//

import Foundation

func allIndices<T: Equatable>(matching target: T, in arr: [T]) -> [Int] {
    var matches = [Int]()
    for (index, value) in arr.enumerated() where value == target {
        matches.append(index)
    }
    return matches
}

let tourLocations = ["New York City", "Los Angeles", "Bangkok", "Istanbul", "London", "New York City", "Toronto"]
let targetCity = "New York City"

print(allIndices(matching: targetCity, in: tourLocations))
