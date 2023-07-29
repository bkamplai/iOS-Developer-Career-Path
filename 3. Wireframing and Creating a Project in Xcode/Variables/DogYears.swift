//  Initialize the number of years my dog is.
var dogAge: Int = 3
//  Dog's first two years count as 21 human years.
var earlyYears: Int = 21
//  Dog's following years counts as 4 human years.
var laterYears: Int = (dogAge - 2) * 4
//  Dog's age in human years.
var humanYears: Int = earlyYears + laterYears

print("My name is Teddy! Ruff ruff, I am \(humanYears) years old in human years.")