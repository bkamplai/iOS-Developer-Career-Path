//
//  main.swift
//  Private Property
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Office {
    let paperclipCost = 10
    private var paperclipSales: Int
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    func printTotalRevenue() {
        let totalRevenue = paperclipSales * paperclipCost
        print("Our total revenue this month is \(totalRevenue).")
    }
}

let alphaOffice = Office(paperclipSales: 18)
//let invalidAccess = alphaOffice.paperclipSales    // Error: 'paperclipSales' is inaccessible due to 'private' protection level

alphaOffice.printTotalRevenue()
