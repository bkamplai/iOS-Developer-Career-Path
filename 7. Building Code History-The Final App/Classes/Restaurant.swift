class Restaurant {
    var name = ""
    var type = [""]
    var rating = 0.0
    var delivery = false

    init(name: String, type: [String], rating: Double, delivery: Bool) {
        self.name = name
        self.type = type
        self.rating = rating
        self.delivery = delivery
  }
}

// var bobsBurgers = Restaurant()
var laRatatouille = Restaurant(name: "La Ratatouille", type: ["French"], rating: 4.7, delivery: false)

/* bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers", "Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true

print(bobsBurgers.name)
print(bobsBurgers.type)
print(bobsBurgers.rating)
print(bobsBurgers.delivery) */

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)