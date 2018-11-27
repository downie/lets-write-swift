/*:
 [Previous](@previous)
 
 # The Basics
 ## Classes
 Classes are pass-by-reference objects. This is more what you'd expeect if you're familiar with Object-Oriented programming.
 */
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

myInventory.currentWeight = 5.5
vendorInventory.currentWeight = 5.5

//myInventory.maxWeight = 100 // Cannot assign to property: 'maxWeight' is a 'let' constant
//myInventory = vendorInventory // Cannot assign to value: 'myInventory' is a 'let' constant

myInventory.items.append("Fancy Lad Snack Cakes")
vendorInventory.items.append("Beer")

//: [Next](@next)
