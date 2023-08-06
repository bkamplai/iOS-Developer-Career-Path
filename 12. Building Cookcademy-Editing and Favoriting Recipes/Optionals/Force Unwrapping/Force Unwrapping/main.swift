//
//  main.swift
//  Force Unwrapping
//
//  Created by Brandon Kamplain on 6/15/23.
//

var flightDistance: Int = 1000
var connectingFlightDistance: Int? = 2000

if connectingFlightDistance != nil {
    let totalFlightDistance = flightDistance + connectingFlightDistance!
    print(totalFlightDistance)
}
