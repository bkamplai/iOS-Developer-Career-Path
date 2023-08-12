//
//  main.swift
//  Plane
//
//  Created by Brandon Kamplain on 8/12/23.
//

class Plane {
    let name: String
    let pilot: Pilot
    init(name: String, pilot: Pilot) {
        self.name = name
        self.pilot = pilot
    }
    deinit {
        print("Plane with name \(name) deinit")
    }
}

class Pilot {
    let name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Pilot \(name) deinit")
    }
}

var kittyHawk: Plane? = Plane(name: "Kitty Hawk", pilot: Pilot(name: "Wright Brothers"))
kittyHawk = nil
