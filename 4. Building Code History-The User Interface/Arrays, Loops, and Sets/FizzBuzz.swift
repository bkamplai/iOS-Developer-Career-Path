// Add your code below:
var count = 1
// 5 = Buzz
// 3 - Fizz
// 2 - Pazz

while count <= Int.random(in: 1...100) {
  if count % 5 == 0 && count % 3 == 0 && count % 2 == 0 {
    print("PazzFizzBuzz")
  } else if count % 5 == 0 && count % 3 == 0 {
    print("FizzBuzz")
  } else if count % 5 == 0 && count % 2 == 0 {
    print("PazzBuzz")
  } else if count % 3 == 0 && count % 2 == 0 {
    print("PazzFizz")
  } else if count % 5 == 0 {
    print("Buzz")
  } else if count % 3 == 0 {
    print("Fizz")
  } else if count % 2 == 0 {
    print("Pazz")
  } else {
    print(count)
  }

  count += 1
}