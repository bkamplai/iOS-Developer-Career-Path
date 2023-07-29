//
//  main.swift
//  Private Setter
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Office {
    var paperclipCost = 10
    
    private(set) var paperclipSales: Int {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips.")
        }
    }
    
    var totalRevenue: Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is $\(totalRevenue).")
    }
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400
alphaOffice.printTotalRevenue()

print("Number of paperclip sales: \(alphaOffice.paperclipSales).")

//alphaOffice.paperclipSales = 30 //Error: Cannot assign to property: 'paperclipSales' setter is inaccessible



