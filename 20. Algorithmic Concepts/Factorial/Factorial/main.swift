//
//  main.swift
//  Factorial
//
//  Created by Brandon Kamplain on 8/18/23.
//

func findFactorialIteratively(of n: Int) -> Int {
    if n == 0 {
        return 1
    }
    var factorial = 1
    for i in 1...n {
        factorial *= i
    }
    return factorial
}

func findFactorialRecursively(of n: Int) -> Int {
    if n > 0 {
        print("Execution context: " + String(n))
        return findFactorialRecursively(of: n - 1)
    }
    return 0
}

var fourFactorial = findFactorialIteratively(of:4)

print(fourFactorial)

