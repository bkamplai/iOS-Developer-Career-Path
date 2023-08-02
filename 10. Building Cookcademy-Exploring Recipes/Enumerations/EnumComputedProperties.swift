enum Vehicle {
    case airplane
    case boat
    case truck(isFourWheelDrive: Bool)
    
    var description: String {
        switch self {
            case .airplane:
                return "This is an airplane"
            case .boat:
                return "This is a boat"
            case let .truck(isFourWheelDrive):
                return "This is a truck" + (isFourWheelDrive ? " with four wheel drive" : "")
        }
    }
}

let myRide = Vehicle.truck(isFourWheelDrive: true)

print(myRide.description)