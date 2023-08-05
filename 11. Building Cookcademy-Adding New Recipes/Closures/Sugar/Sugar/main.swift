//
//  main.swift
//  Sugar
//
//  Created by Brandon Kamplain on 6/19/23.
//

let strings = ["remit", "spans", "level"]

func transform(strings: [String], transformer: (String) -> String) -> [String] {
    var transformedStrings = [String]()
    for string in strings {
        transformedStrings.append(transformer(string))
    }
    return transformedStrings
}

print(transform(strings: strings) {(str: String) -> String in
    return String(str.reversed())
})

print(transform(strings: strings) {str in
    String(str.reversed())
})

print(transform(strings: strings) {String($0.reversed())})
