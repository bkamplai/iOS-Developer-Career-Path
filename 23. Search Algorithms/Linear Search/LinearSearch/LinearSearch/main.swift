//
//  main.swift
//  LinearSearch
//
//  Created by Brandon Kamplain on 5/27/24.
//

func firstIndex<T: Equatable>(of target: T, in arr: [T]) -> Int? {
    for (index, value) in arr.enumerated() where value == target {
        return index
    }
    return nil
}

let values = [5, 2, 4, 7]
let targetValue = 2
let index = firstIndex(of: targetValue, in: values)

print("index equals \(index!)")
