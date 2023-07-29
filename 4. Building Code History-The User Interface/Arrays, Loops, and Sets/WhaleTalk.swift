// Create your Whale Talk program below:
var input = "The quick brown fox jumped over the lazy dog."
var output = ""

for char in input {
  let lowerChar = char.lowercased()

  switch lowerChar {
    case "a", "i", "o":
      output += lowerChar.uppercased()
    case "!", "$", "&", "(", ")", "-", "'", "\"", ",", ".", "?":
      output += lowerChar
    case "n", "r", "w":
      output += lowerChar.uppercased()
    case "e", "u":
      output += lowerChar == "e" ? "EE" : "UU"
    default:
      continue
  }
}

print(output)