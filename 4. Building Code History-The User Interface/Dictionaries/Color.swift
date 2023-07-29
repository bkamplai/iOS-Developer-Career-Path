var rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

// Write your code below 🌈
rainbowHex["maroon"] = nil
rainbowHex.removeValue(forKey: "pink")
rainbowHex.removeAll()

print(rainbowHex)