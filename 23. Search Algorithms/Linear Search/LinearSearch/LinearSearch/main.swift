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

let values = [10, 14, 19, 26, 27, 31, 33, 35, 42, 44]
let targetValue = 100//33

if let index = firstIndex(of: targetValue, in: values) {
    print("Value found at index \(index)")
} else {
    print("Value not found")
}
