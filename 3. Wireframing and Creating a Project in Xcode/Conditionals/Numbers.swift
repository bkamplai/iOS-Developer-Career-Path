var wholeNumber = Int.random(in: 10...20)

// Write your code below 
print(wholeNumber)

switch wholeNumber {
  case let x where x % 2 == 0:
    print("\nComposite")
  case let x where x % 3 == 0:
    print("\nComposite")
  default:
    print("\nPrime")
}