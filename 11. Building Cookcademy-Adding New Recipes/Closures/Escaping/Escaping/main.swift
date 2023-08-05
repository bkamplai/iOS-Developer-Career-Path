//
//  main.swift
//  Escaping
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct NumberPrinter {
    var startAction: () -> Void
    var completeAction: () -> Void
    
    mutating func setStartAction(to action: @escaping () -> Void) {
        self.startAction = action
    }
    
    mutating func setCompleteAction(to action: @escaping () -> Void) {
        self.completeAction = action
    }
    
    func printNumber(using numberGenerator: () -> Int) {
        startAction()
        print(numberGenerator())
        completeAction()
    }
}

let printer = NumberPrinter(startAction: { print("Starting!") }, completeAction: { print("Finished!") })

printer.printNumber(using: { Int.random(in: 1..<100) })
printer.printNumber(using: { Int.random(in: 1..<5) })
