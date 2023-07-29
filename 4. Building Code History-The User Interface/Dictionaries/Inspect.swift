var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

// Add your code below 🔺
if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}