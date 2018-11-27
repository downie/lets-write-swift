//: [Next](@next)
//:# The Basics
//:## Classes
class Inventory {
    var items: [String]
    let maxWeight: Double = 200
    var currentWeight: Double = 0
    
    init(withItems: [String]) {
        items = withItems
    }
}

let myInventory = Inventory(withItems: ["Purified Water"])
var vendorInventory = Inventory(withItems: ["NukaCola"])
