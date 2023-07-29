var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

// Add your code below 🏆
var difference = oscarWinners.symmetricDifference(emmyWinners)

print(difference)