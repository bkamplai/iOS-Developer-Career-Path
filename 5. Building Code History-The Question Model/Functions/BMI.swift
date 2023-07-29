let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters

// Write your code below 💪
func findBMI() -> Double {
  return weight/(height*height)
}

print(findBMI())