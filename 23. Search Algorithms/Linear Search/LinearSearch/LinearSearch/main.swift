//
//  main.swift
//  LinearSearch
//
//  Created by Brandon Kamplain on 5/27/24.
//

import Foundation

func firstIndex<T: Equatable>(of target: T, in arr: [T]) -> Int? {
    for (index, value) in arr.enumerated() where value == target {
        return index
    }
    return nil
}

func allIndices<T: Equatable>(matching target: T, in arr: [T]) -> [Int] {
    var matches = [Int]()
    for (index, value) in arr.enumerated() where value == target {
        matches.append(index)
    }
    return matches
}

func maximumValue<T: Comparable>(in arr: [T]) -> T? {
    guard !arr.isEmpty else {
        return nil
    }
    var max = arr[0]
    for value in arr where value > max {
        max = value
    }
    return max
}

let values = [ 10, 14, 19, 26, 27, 31, 33, 35, 42, 44]
let targetValue = 100//33

let tourLocations = ["New York City", "Los Angeles", "Bangkok", "Istanbul", "London", "New York City", "Toronto"]
let targetCity = "New York City"

let testScores = [88, 93, 75, 100, 80, 67, 71, 92, 90, 83]

if let index = firstIndex(of: targetValue, in: values) {
    print("Value found at index \(index)")
} else {
    print("Value not found")
}

print(allIndices(matching: targetCity, in: tourLocations))

if let topScore = maximumValue(in: testScores) {
    print("The top score is \(topScore)")
} else {
    print("No top score")
}
