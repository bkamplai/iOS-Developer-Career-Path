// Write your code below 🥛
var numBottles: Int = 99

while numBottles > 0 {
  print("\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!")
  print("You take one down and pass it around...")

  numBottles -= 1

  print("\(numBottles) bottles of milk on the wall!\n")
}

print("0 bottles of milk on the wall, 0 bottles of milk!")
print("Go to the store and buy some more,")
print("99 bottles of milk on the wall!")

/*
//  Optional 1 & 2
let verse2 = "0 bottles of milk on the wall, 0 bottles of milk!\nGo to the store and buy some more,\n99 bottles of milk on the wall!"

for numBottles in stride(from: 99, to: 0, by: -1) {
  let verse1 = "\(numBottles) bottles of milk on the wall, \(numBottles) bottles of milk!\nYou take one down and pass it around...\n\(numBottles - 1) bottles of milk on the wall!\n"

  print (verse1)
}

print (verse2)

//  Optional 3
var numMonkeys = 5

while numMonkeys > 1 {
  print ("\(numMonkeys) little monkeys jumping on the bed.\nOne fell off and bumped their head!\nMama called the doctor and the doctor said\n\"No more monkeys jumping on the bed!\"\n")

  numMonkeys -= 1
}

print ("\(numMonkeys) little monkey jumping on the bed.\nThey fell off and bumped their head!\nMama called the doctor and the doctor said\n\"Put those monkeys straight to bed!\"")
*/