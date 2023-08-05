//
//  main.swift
//  Calculator
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Calculator {
    func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
        var total = initialResult
        for num in nums {
            total = nextPartialResult(total, num)
        }
        return total
    }
    
    func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
        var filteredNums = [Int]()
        for num in nums {
            if isIncluded(num) {
                filteredNums.append(num)
            }
        }
        return filteredNums
    }
    
    func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
        var mappedNums = [Int]()
        for num in nums {
            mappedNums.append(transform(num))
        }
        return mappedNums
    }
    
    func sort(_ nums: [Int]) -> [Int] {
        return nums.sorted()
    }
}

let calculator = Calculator() // Created instance of Calculator

// Test reduce() function
let nums = [8, 7, 2, 1, 9]
let addition: (Int, Int) -> Int = {$0 + $1}
let sum = calculator.reduce(nums, using: addition, startingAt: 0)
print("Sum: \(sum)")

// Test filter() function
let nums2 = [8, 0, 7, 0, 2, 0, 1, 0, 9]
let filter = calculator.filter(nums2, using: {$0 != 0})
print("Filter: \(filter)")

// Test map() function
let map = calculator.map(nums, using: {$0 + Int.random(in: 1..<100)})
print("Map: \(map)")

// Test sort() function
let sort = calculator.sort(nums)
print("Sort: \(sort)")
