//: [Next](@next)
//:# The Basics
//:## Classes
myInventory.currentWeight = 5.5
vendorInventory.currentWeight = 5.5

//myInventory.maxWeight = 100
//myInventory = vendorInventory

myInventory.items.append("Fancy Lad Snack Cakes")
vendorInventory.items.append("Beer")

let constArray = [4]
var changeArray = [5]

changeArray = constArray
changeArray.append(6)
constArray
