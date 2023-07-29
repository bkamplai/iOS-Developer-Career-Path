// Write your code below 🏷
func addFriend(named friendName: String) {
  friendsList.append(friendName)
}

var friendsList = [String]()

addFriend(named: "Alice")
addFriend(named: "Bob")
addFriend(named: "Cindy")

print(friendsList)