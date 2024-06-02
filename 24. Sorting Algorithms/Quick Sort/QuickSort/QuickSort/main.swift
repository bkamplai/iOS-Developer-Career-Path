//
//  main.swift
//  QuickSort
//
//  Created by Brandon Kamplain on 6/2/24.
//

func quicksort(_ array: inout [Int], from start: Int, to end: Int) {
    if start < end {
        let partitionIndex = partition(&array, from: start, to: end)
        quicksort(&array, from: start, to: partitionIndex - 1)
        quicksort(&array, from: partitionIndex + 1, to: end)
    }
}

func partition(_ array: inout [Int], from start: Int, to end: Int) -> Int {
    let pivot = array[end]
    
    var currentIndex = start
    
    for index in currentIndex..<end {
        if array[index] <= pivot {
            array.swapAt(currentIndex, index)
            currentIndex += 1
        }
    }
    array.swapAt(currentIndex, end)
    return currentIndex
}
