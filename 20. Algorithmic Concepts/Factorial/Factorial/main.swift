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
        return n * findFactorialRecursively(of: n - 1)
    } else {
        return 1
    }
}

var fourFactorial = findFactorialIteratively(of:4)

print(fourFactorial)
print(findFactorialRecursively(of: 4))
print("The iterative solution to 10! is: " + String(findFactorialIteratively(of: 10)))
print("The recursive solution to 10! is: " + String(findFactorialRecursively(of: 10)))
