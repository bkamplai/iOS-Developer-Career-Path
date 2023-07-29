// Write your code below 📼
// Mixtape theme: Songs that I like currently

print(".------------------------.")
print("| What I like     29 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]()

mixtape.append("u love u (feat. JVKE) - Jax")
mixtape.append("The Tornado - Owl City")
mixtape.append("Six Pills - Rosendale")
mixtape.append("Jericho - Iniko")
mixtape.append("Dopamine - Madelline")
mixtape.append("Mother - Meghan Tainor")
mixtape.append("INTRUSIVE THOUGHTS - GRANT KNOCHE")
mixtape.append("Ribcage - Andy Black")
mixtape.append("Downpour - GRANT KNOCHE")
mixtape.append("Icarus - GRANT KNOCHE")

print("\nNumber of songs: \(mixtape.count)")
mixtape.remove(at: 7)
mixtape.insert("Jack & Phil - Noah Davis", at: 0)

// for songs in mixtape {
//   print(songs)
// }

print("\nSide A:\n")
for i in 0 ..< mixtape.count/2 {
  print("\(i+1). \(mixtape[i])")
}

print("\nSide B:\n")
for i in mixtape.count/2 ..< mixtape.count {
  print("\(i+1). \(mixtape[i])")
}

print("\nhttps://music.apple.com/us/playlist/what-i-like/pl.u-ZmblldJi0zV2Al2")