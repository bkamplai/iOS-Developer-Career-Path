//
//  main.swift
//  Computed Properties Setters
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
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
        
    }
    
    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is $\(totalRevenue)")
    }
}

var alphaOffice = Office(paperclipSales: 18)

alphaOffice.totalRevenue = 400
alphaOffice.printTotalRevenue()
