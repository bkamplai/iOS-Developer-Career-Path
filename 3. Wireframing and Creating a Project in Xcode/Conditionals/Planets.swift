var planet = "USA" 

// Write your code below 🪐
switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
    print("Terrestrial planet")
  case "Saturn", "Jupiter", "Uranus", "Neptune":
    print("Jovian planet")
  default:
    print("Unknown planet")
}