//
//  main.swift
//  Type Properties
//
//  Created by Brandon Kamplain on 7/3/23.
//

struct Office {
    let paperclipCost = 10
    static var paperclipSalesRecord = 0
    
    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips")
            
            if newValue > Office.paperclipSalesRecord {
                Office.paperclipSalesRecord = newValue
            }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
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
        print("Our total revenue this month is \(totalRevenue)")
    }
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400
alphaOffice.printTotalRevenue()
print("The paperclip sales record is \(Office.paperclipSalesRecord)!")
