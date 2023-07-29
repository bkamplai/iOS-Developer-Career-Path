let adults = 2
let students = 15 

// Write your code below 🏛️
func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}

print(museumEntry(adults, students))