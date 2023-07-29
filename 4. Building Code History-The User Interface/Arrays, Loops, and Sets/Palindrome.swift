var text = ["h", "e", "l", "l", "o"]
//var text = ["l", "e", "v", "e", "l"]
//var text = ["a", "n", "n", "a"]
var reversed = [String]()
var counter = text.count - 1

while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}

if reversed == text {
  print("We have a palindrome!\n")
} else {
  print("We don't have a palindrome.\n")
}