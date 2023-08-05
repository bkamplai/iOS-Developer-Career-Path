//
//  main.swift
//  Higher
//
//  Created by Brandon Kamplain on 7/3/23.
//

var names = ["Jason", "Kimberly", "Zach", "Austin", "Sarah", "Adam", "Kathy"]
let aNames = names.filter {$0.starts(with: ["A"])}
let sortedNames = names.sorted(by: <)

print(aNames)
print(sortedNames)
