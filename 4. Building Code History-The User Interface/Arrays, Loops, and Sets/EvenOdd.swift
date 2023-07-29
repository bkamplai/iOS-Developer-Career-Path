var list = [2, 4, 3, 6, 1, 9]

// Write your code below 🧮
var evenSum = 0
var oddProduct = 1

for num in list {
  if num % 2 == 0 {
    evenSum += num
  } else {
    oddProduct *= num
  }
}

print("Sum of even numbers is \(evenSum)\nProduct of odd numbers is \(oddProduct)")