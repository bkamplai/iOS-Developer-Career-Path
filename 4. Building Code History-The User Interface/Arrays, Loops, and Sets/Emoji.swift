var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]

// Add your code below 🥗
var veggieEmojis = foodEmojis.subtracting(fruitEmojis)

print(veggieEmojis)