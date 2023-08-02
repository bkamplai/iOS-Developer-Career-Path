enum Vehicle {
    case airplane
    case boat
    case truck
}

var myRide = Vehicle.truck
 
switch myRide {
  case .airplane:
    print("Let's fly to Peru")
  case .boat:
    print("Let's sail to Hawaii")
  case .truck:
    print("Let's drive to the store")
}