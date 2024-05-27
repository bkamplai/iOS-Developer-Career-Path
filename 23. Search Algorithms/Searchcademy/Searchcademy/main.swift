//
//  main.swift
//  Searchcademy
//
//  Created by Brandon Kamplain on 5/27/24.
//

func sparseSearch<T: Comparable>(for target: T, in arr: [T], isSparse: (T) -> Bool) -> Int? {
    var first = 0
    var last = arr.count - 1
    
    while first <= last {
        var middle = (first + last) / 2
        
        if isSparse(arr[middle]) {
            var left = middle - 1
            var right = middle + 1
            
            while true {
                if left < first && right > last {
                    return nil
                } else if !isSparse(arr[right]) && right <= last {
                    middle = right
                    break
                } else if !isSparse(arr[left]) && left >= first {
                    middle = left
                    break
                }
                right += 1
                left -= 1
            }
        }
        
        if arr[middle] == target {
            return middle
        }else if target < arr[middle] {
            last = middle - 1
        } else {
            first = middle + 1
        }
    }
    return nil
}

let arr = ["Arthur", "", "", "", "", "Devan", "", "", "Elise", "", "", "", "Gary", "", "", "Mimi", "", "", "Parth", "", "", "", "Zachary"]
let target = "Devan"

if let targetIndex = sparseSearch(for: target, in: arr, isSparse: { $0 == "" }) {
    print("\(target) found at index \(targetIndex)")
} else {
    print("\(target) not found")
}
