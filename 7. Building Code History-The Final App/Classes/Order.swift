class Order {
    var items = [""]
    var subtotal = 0.0
    var tip = 0.0
    var total = 0.0

    init(items: [String], subtotal: Double, tip: Double, total: Double) {
        self.items = items
        self.subtotal = subtotal
        self.tip = tip
        self.total = total
  }

    func printReceipt() {
        print("Items:     \(items)")
        print("Subtotal:  $\(subtotal)")
        print("Tip:       $\(tip)")
        print("Total:     $\(total)")
    }
}

class DeliveryOrder: Order {
    var deliveryFee = 2.0

    override func printReceipt() {
        print("Items:     \(items)")
        print("Subtotal:  $\(subtotal)")
        print("Tip:       $\(tip)")
        print("Delivery:  $\(deliveryFee)")
        print("Total:     $\(total)")
    }
}

// var order2 = DeliveryOrder()
var order1 = Order(items: ["Chili Fries", "Lemonade"], subtotal: 8.75, tip: 2.0, total: 12.75)
var order8 = order1

/* order2.items = ["Ramen", "Diet Coke"]
order2.subtotal = 14.69
order2.tip = 2.00
order2.deliveryFee = 3.00
order2.total = 19.69
order2.printReceipt() */

order8.total = 0.0

print(order1.total)
print(order8.total)