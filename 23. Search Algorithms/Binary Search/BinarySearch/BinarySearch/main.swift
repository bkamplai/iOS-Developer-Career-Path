//
//  main.swift
//  BinarySearch
//
//  Created by Brandon Kamplain on 5/27/24.
//

func binarySearch<T: Comparable>(for key: T, in arr: [T], withRange range: Range<Int>) -> Int? {
    guard range.lowerBound < range.upperBound else {
        return nil
    }
    
    let midIndex = (range.lowerBound + (range.upperBound - range.lowerBound)) / 2
    
    if arr[midIndex] == key {
        return midIndex
    }
    
    return nil
}
