enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
}

let myRide = Vehicle.truck(isFourWheelDrive: true)

switch myRide {
    case let .truck(isFourWheelDrive):
        if isFourWheelDrive {
            print("Let's go to the mountains")
        } else {
            print("Let's go to the store.")
        }
    case .boat:
        print("Let's sail to Hawaii")
    case .airplane:
        print("Let's fly to Peru")
}