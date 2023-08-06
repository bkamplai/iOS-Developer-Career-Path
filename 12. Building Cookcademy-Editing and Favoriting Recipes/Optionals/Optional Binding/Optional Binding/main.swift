//
//  main.swift
//  Optional Binding
//
//  Created by Brandon Kamplain on 6/15/23.
//

var firstName = "Brandon"
var lastName = "Kamplain"
var suffix: String? = "I"

suffix = nil

if let suffix = suffix {
    print("Hello, \(firstName) \(lastName) \(suffix)")
} else {
    print("Hello, \(firstName) \(lastName)")
}
