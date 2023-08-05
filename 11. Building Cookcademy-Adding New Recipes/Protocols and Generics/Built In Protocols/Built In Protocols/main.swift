//
//  main.swift
//  Built In Protocols
//
//  Created by Brandon Kamplain on 7/4/23.
//

struct Store: Hashable {
    var name: String
    var products: [String]
}

let jaysPizza = Store(name: "Jay's Pizza", products: ["Pizza", "Soda", "Salad"])
let salesByStore: [Store: Double] = [jaysPizza: 100]
