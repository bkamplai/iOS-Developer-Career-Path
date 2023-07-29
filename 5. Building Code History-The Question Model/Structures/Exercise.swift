struct Exercise {
    var name: String
    var muscleGroups: [String]
    var reps: Int
    var sets: Int
    var totalReps: Int

    init(_ name: String, _ muscleGroups: [String], _ reps: Int, _ sets: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = reps * sets
    }
}

struct Regimen {
    var dayOfWeek: String
    var exercises: [Exercise]

    init(_ dayOfWeek: String, _ exercises: [Exercise]) {
        self.dayOfWeek = dayOfWeek
        self.exercises = exercises
    }

    func printExercisePlan() {
        print("Today is \(self.dayOfWeek) and the plan is to:")

        for exercise in self.exercises {
            print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
            print("That\'s a total of \(exercise.totalReps) \(exercise.name)s.")
        }
    }

    mutating func addExercise(_ newExercise: Exercise) {
        self.exercises.append(newExercise)
    }
}

var pushUp = Exercise("Push up", ["Triceps", "Chest", "Shoulders"], 10, 3)
var sitUp = Exercise("Sit up", ["Rectus abdominis", "Transverse abdominis", "Obliques", "Hip flexors", "Chest", "Neck"], 6, 1)
var squat = Exercise("Squat", ["Quadriceps femoris", "Adductor magnus", "Gluteus maximus", "Erector spinae"], 6, 3)

var mondayRegimen = Regimen("Monday", [pushUp])
var wednesdayRegimen = Regimen("Wednesday", [sitUp])
var fridayRegimen = Regimen("Friday", [sitUp, pushUp, squat])

mondayRegimen.addExercise(squat)
mondayRegimen.printExercisePlan()
print("\n")
wednesdayRegimen.printExercisePlan()
print("\n")
fridayRegimen.printExercisePlan()