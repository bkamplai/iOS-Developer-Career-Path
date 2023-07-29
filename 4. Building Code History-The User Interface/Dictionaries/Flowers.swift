var flowerNames = [
  "Lily": "Lilium",                
  "Sunflower": "Helianthus", 
  "Orchid": "Orchidaceae", 
  "Daffodil": "Narcissus"
]

// Add your code below 🌼
var sunflowerScientific = flowerNames["Sunflower"]!
print(sunflowerScientific)

if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}