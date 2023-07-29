var lemonadeStand = [
  "April": 8.50,
  "May": 12.75,
  "June": 22.50,
  "July": 38.25, 
  "August": 32.50,
  "September": 11.50
]

var total: Double = 0.0

// Add your code below 🍋
for monthlyProfit in lemonadeStand.values {
  total += monthlyProfit
}


print("Total profits are \(total)")