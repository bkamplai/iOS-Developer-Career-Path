var weightPound: Double = 308
var heightFeet: Double = 6
var heightInch: Double = 2
var heightTotalInch: Double = (heightFeet*12) + heightInch
var weightKilogram: Double = weightPound / 2.205
var heightMeter: Double = heightTotalInch / 39.37
var bmi = weightKilogram / (heightMeter * heightMeter)

print("The BMI for someone who is \(heightFeet)'\(heightInch)\" (or \(heightMeter) meters) and \(weightPound) lbs (or \(weightKilogram) kg) is \(bmi).")