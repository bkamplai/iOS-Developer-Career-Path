enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    mutating func goOffRoad() {
        self = .truck(isFourWheelDrive: true)
    }
}

var myRide = Vehicle.airplane

myRide.goOffRoad()

print(myRide)