//
//  main.swift
//  Plane
//
//  Created by Brandon Kamplain on 8/12/23.
//

class Plane {
    let name: String
    weak var pilot: Pilot?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Plane with name \(name) deinit")
    }
}

class Pilot {
    let name: String
    var plane: Plane?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Pilot \(name) deinit")
    }
}

//var kittyHawk: Plane? = Plane(name: "Kitty Hawk", pilot: Pilot(name: "Wright Brothers"))
//kittyHawk = nil

var lindbergh: Pilot? = Pilot(name: "Charles Lindbergh")
var plane = Plane(name: "Spririt of St. Louis")

plane.pilot = lindbergh
lindbergh = nil
print(plane.pilot?.name ?? "No pilot")

var redBaron: Pilot? = Pilot(name: "Manfred von Ricthofen")
var triplane: Plane? = Plane(name: "Fokker Dr.I")
redBaron?.plane = triplane
triplane?.pilot = redBaron

redBaron = nil
triplane = nil
