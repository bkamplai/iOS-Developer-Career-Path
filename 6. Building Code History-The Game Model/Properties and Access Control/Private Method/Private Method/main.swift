//
//  main.swift
//  Private Method
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Office {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        let totalRevenue = (paperclipSales * paperclipCost) + getSecretRevenue()
        print("Our total revenue this month is $\(totalRevenue).")
    }
}

let alphaOffice = Office(paperclipSales: 18)
alphaOffice.printTotalRevenue()
//alphaOffice.getSecretRevenue()  // Error: 'getSecretRevenue' is inaccessible due to 'private' protection level
