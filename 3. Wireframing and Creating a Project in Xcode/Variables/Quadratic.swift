var a: Double = 3.0
var b: Double = -11.0
var c: Double = -4.0
var root1: Double = (-b + (b * b - 4 * a * c).squareRoot()) / (2 * a)
var root2: Double = (-b - (b * b - 4 * a * c).squareRoot()) / (2 * a)

print("Root 1 is \(root1)")
print("Root 2 is \(root2)")