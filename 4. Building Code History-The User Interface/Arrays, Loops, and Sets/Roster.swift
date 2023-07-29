var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎
spanish101.remove("Skyla")
artHistory.remove("Skyla")
computerScience.remove("Skyla")

var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)
var noLanguage = allStudents.subtracting(german101).subtracting(spanish101)
var spanishOrGerman = spanish101.symmetricDifference(german101)
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
var sevenPlus = 0
var classSet: Set = [advancedCalculus, spanish101, german101, artHistory, englishLiterature, computerScience]
var fieldTrip = computerScience.union(advancedCalculus).subtracting(german101)

for student in allStudents {
  print(student)
}

print("\nNumber of students:", allStudents.count)
print("\nnoLanguage =", noLanguage)
print("\nspanishOrGerman =", spanishOrGerman)

for set in classSet {
  if set.count >= 7 {
    sevenPlus += 1
  }
}

print("\nsevenPlus:", sevenPlus)
print("\nfieldTrip =", fieldTrip)