enum Vehicle: CaseIterable {
    case truck
    case boat
    case airplane
}

for vehicle in Vehicle.allCases {
  print(vehicle)
}