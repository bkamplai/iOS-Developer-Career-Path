// Test your 🔁 skills!
//  First challenge
for num in 1...100 {
  if num % 2 == 0{
    print("\(num) is even.")
  } else {
    print("\(num) is odd.")
  }
}

//  Second Challenge
var checkPrime = Int.random(in: 2...100)
var isPrime = true
for num in 2...checkPrime - 1 {
  if checkPrime % num == 0 {
    isPrime = false
    break
  }
}

isPrime ? print("\(checkPrime) is a prime number!") : print("\(checkPrime) is not a prime number!")

//  Third Challenge
var count = 0
var string = "The quick brown fox jumped over the lazy dog"

for _ in string {
  count += 1
}

print("Ther are \(count) characters in \"\(string)\".")

//  Fourth Challenge
var asterisk = ""
var num = 4

for _ in 1...num {
  asterisk += "*"
  print(asterisk)
}