//
//  main.swift
//  Protocol Inheritance
//
//  Created by Brandon Kamplain on 7/4/23.
//

protocol Car: CustomStringConvertible {
    var model: String { get }
    var topSpeed: Double { get }
    var description: String { get }
}

protocol ElectricCar: Car {
    var range: Double { get }
}

protocol GasCar: Car {
    var milesPerGallon: Double { get }
}

struct Oldsmobile: GasCar {
    let model: String
    let topSpeed: Double
    let milesPerGallon: Double
    var description: String {
        "This is an Oldsmobile \(model) with a top speed of \(topSpeed) that gets \(milesPerGallon) miles per gallon"
    }
    
}

struct Tesla: ElectricCar {
    let model: String
    let range: Double
    let topSpeed: Double
    var description: String {
        "This is a Telsa \(model) with a top speed of \(topSpeed) and a range of \(range)"
    }
}

let modelX = Tesla(model: "Model X", range: 350, topSpeed: 155)
let achieva = Oldsmobile(model: "Achieva", topSpeed: 139, milesPerGallon: 32)

let cars: [Car] = [modelX, achieva]
for car in cars {
    print(car.description)
}
