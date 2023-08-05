//
//  main.swift
//  Protocol Extensions
//
//  Created by Brandon Kamplain on 7/4/23.
//

protocol IceCreamSelling {
    var flavors: [String] { get }
}

extension IceCreamSelling {
    var flavors: [String] {
        ["Vanilla", "Chocolate"]
    }
}

struct IceCreamTruck: IceCreamSelling {
    let name: String
}

struct IceCreamParlor: IceCreamSelling {
    let name: String
    var flavors: [String] {
        ["Mint Chip", "Strawberry", "Cookie Dough"]
    }
}

let misterSoftee = IceCreamTruck(name: "Mister Softee")
let popTates = IceCreamParlor(name: "Pop Tate's")

print(misterSoftee.flavors)
print(popTates.flavors)
