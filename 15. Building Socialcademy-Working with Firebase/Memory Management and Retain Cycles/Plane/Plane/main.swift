//
//  main.swift
//  Plane
//
//  Created by Brandon Kamplain on 8/12/23.
//

class Plane {
    let name: String
    var printDescription: (() -> Void)!
    weak var pilot: Pilot?
    init(name: String) {
        self.name = name
        configurePrintDescription()
    }
    private func configurePrintDescription() {
        printDescription = { [weak self] in
            let planeName = self?.name ?? "No Name"
            if let pilot = self?.pilot {
                print("This is a plane named \(planeName) with a pilot named \(pilot.name)")
            } else {
                print("This is a plane named \(planeName) with no current pilot")
            }
        }
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

var coleman: Pilot? = Pilot(name: "Bessie Coleman")
var biplane: Plane? = Plane(name: "Jenny - JN-4")
biplane?.pilot = coleman
biplane?.printDescription()

biplane = nil
