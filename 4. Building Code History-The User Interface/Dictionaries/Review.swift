// Practice using dictionaries below ⭐
var motherlandFortSalem = [
  "Raelle Collar": "Taylor Hickson",
  "Abigail Bellweather": "Ashely Nicole Williams",
  "Tally Craven": "Jessica Sutton",
  "Libba Swythe": "Sarah Yarkin"
]

motherlandFortSalem["Sarah Alder"] = "Lyne Renee"
motherlandFortSalem["Libba Swythe"] = nil
motherlandFortSalem["Sarah Alder"] = "Lyne Renée"

for (character, actor) in motherlandFortSalem {
  print("\(character) was played by \(actor).")
}