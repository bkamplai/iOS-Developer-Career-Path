var englishText = "this is a secret message".lowercased()

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-. .-.-.-   .--. .- .-. - -. . .-. ..--..   .--. .- .-. - -. . .-. -.-.--"

// Add your code below 🤫
var letterToMorse = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "?": "..--..",
  ",": "--..--",
  "!": "-.-.--"
]
var morseText = ""
var decodedMessage = ""
var morseCodeArray = [String]()
var currMorse = ""
var morseToLetter = [String: String]()
var cnt = 1
var decodedMessageCapital = ""

for element in englishText {
  if let morseChar = letterToMorse["\(element)"] {
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}
print("Coded Message:",morseText)

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}
morseCodeArray.append(currMorse)
//print(morseCodeArray)

for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

for morseValue in morseCodeArray {
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  } else {
    decodedMessage += " "
  }
}

for char in decodedMessage {
  if char == "." || char == "!" || char == "?" {
    cnt = 0
    decodedMessageCapital.append(char)
    continue
  }
  if cnt == 1 {
    decodedMessageCapital.append(char.uppercased())
  } else {
    decodedMessageCapital.append(char)
  }
  cnt += 1
}
print("\nDecoded Message:",decodedMessageCapital)