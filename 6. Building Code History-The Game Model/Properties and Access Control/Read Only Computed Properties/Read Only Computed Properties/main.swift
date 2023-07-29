//
//  main.swift
//  Read Only Computed Properties
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Office {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
    }
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

let alphaOffice = Office(paperclipSales: 18)

print(alphaOffice.totalRevenue)
