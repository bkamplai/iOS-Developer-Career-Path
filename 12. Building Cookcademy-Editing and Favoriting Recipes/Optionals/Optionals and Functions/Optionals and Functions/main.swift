//
//  main.swift
//  Optionals and Functions
//
//  Created by Brandon Kamplain on 6/16/23.
//

let words = ["optionals", nil, "are", "great", nil, "at", "handling", nil, "values"]

func firstIndex(of target: String, in arr: [String?]) -> Int? {
    for i in arr.indices {
        guard let value = arr[i], value == target else {
            continue
        }
        return i
    }
    return nil
}

if let greatIndex = firstIndex(of: "great", in: words) {
    print(greatIndex)
}

if let badIndex = firstIndex(of: "bad", in: words) {
    print(badIndex)
} else {
    print("words does not contain the string 'bad'")
}
