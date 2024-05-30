//
//  main.swift
//  BubbleSort
//
//  Created by Brandon Kamplain on 5/29/24.
//

func bubbleSort(inputArray: inout [Int]) {
    for i in 0..<inputArray.count {
        for j in 1..<inputArray.count - i {
            if inputArray[j] < inputArray[j - 1] {
                print("Swapping values: \(inputArray[j]) and \(inputArray[j - 1])")
                inputArray.swapAt(j, j - 1)
                print("Sorted array: \(inputArray)")
            }
        }
    }
}
