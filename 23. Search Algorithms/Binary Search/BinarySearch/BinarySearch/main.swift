//
//  main.swift
//  BinarySearch
//
//  Created by Brandon Kamplain on 5/27/24.
//

func binarySearch<T: Comparable>(for key: T, in arr: [T], withRange range: Range<Int>) -> Int? {
    print("Searching for \(key) in \(arr[range.lowerBound..<range.upperBound])")
    
    guard range.lowerBound < range.upperBound else {
        print("Invalid range, returning nil")
        return nil
    }
    
    let midIndex = (range.lowerBound + (range.upperBound - range.lowerBound)) / 2
    
    if arr[midIndex] == key {
        print("Found \(key) at index \(midIndex)")
        return midIndex
    }
    
    let newRange: Range<Int>
    
    if arr[midIndex] < key {
        newRange = (midIndex + 1)..<range.upperBound
    } else {
        newRange = range.lowerBound..<midIndex
    }
    return binarySearch(for: key, in: arr, withRange: newRange)
}

let data = [1, 14, 23, 33, 56, 100, 110, 125, 140]
let target = 23
if let index = binarySearch(for: target, in: data, withRange: 0..<data.count) {
    print(index)
}
