enum Vehicle: Character {
    case truck = "T"
    case boat = "B"
    case airplane = "A"
}
 
print(Vehicle.airplane.rawValue)

let myBoat = Vehicle(rawValue: "B")