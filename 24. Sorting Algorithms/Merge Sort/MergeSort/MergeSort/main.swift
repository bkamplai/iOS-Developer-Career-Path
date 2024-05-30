//
//  main.swift
//  MergeSort
//
//  Created by Brandon Kamplain on 5/29/24.
//

func mergeSort(_ inputArray: [Int]) -> [Int] {
    guard inputArray.count > 1 else {return inputArray}
    let midIndex = inputArray.count / 2
    let leftArray = Array(inputArray[0..<midIndex])
    let rightArray = Array(inputArray[midIndex..<inputArray.count])
    let leftMerge = mergeSort(leftArray)
    let rightMerge = mergeSort(rightArray)
    return merge(leftArray: leftMerge, rightArray: rightMerge)
}

func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    return []
}
