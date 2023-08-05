//
//  main.swift
//  Associated Types
//
//  Created by Brandon Kamplain on 7/4/23.
//

// Write your code below ➕
protocol SummableCollection {
    associatedtype T: AdditiveArithmetic
    var elements: [T] {get}
    var total: T {get}
}

extension SummableCollection {
    var total: T {
        return elements.reduce(T.zero, +)
    }
}

struct IntCollection: SummableCollection {
    var name: String
    var elements: [Int]
}

struct DoubleCollection: SummableCollection {
    var name: String
    var elements: [Double]
}

let revenue = DoubleCollection(name: "Monthly Revenue in Thousands", elements: [1.5, 3.2, 1.8])
let homeRuns = IntCollection(name: "Home Runs", elements: [1, 0, 2])

print(revenue.total)
print(homeRuns.total)
