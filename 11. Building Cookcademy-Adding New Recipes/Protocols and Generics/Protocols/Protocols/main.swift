//
//  main.swift
//  Protocols
//
//  Created by Brandon Kamplain on 7/4/23.
//

protocol Incrementable {
    var currentValue: Double {get}
    mutating func increment()
}

struct VisitorCounter: Incrementable {
    var currentValue = 0.0
    mutating func increment() {
        currentValue += 1
    }
}

struct Wage: Incrementable {
    var currentValue = 15.0
    mutating func increment() {
        currentValue += currentValue * 0.10
    }
}

var parkGuests = VisitorCounter()
parkGuests.increment()
print(parkGuests.currentValue)

var salary = Wage()
salary.increment()
print(salary.currentValue)
