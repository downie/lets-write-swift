/*:
 # The Basics of Swift
 
 Swift is a strongly typed language. Let's check it out!
 
 */

/*:
 ## Basic Types & Type Safety
 Variables declared with `var` can, well, vary. Variables declare with `let` can't change
 */
var greeting = "Good morning!"
if isItAfterNoon {
    greeting = "Good evening!"
}
print(greeting)

let result = "War, war never changes."
//result = "War changed." // Cannot assign to value: 'result' is a 'let' constant


/*:
 That was stongly typed, but the types were all inferred by the compiler. You can be explicit about types, and use
 Optionals when there's a chance something can be nil
 */
//: A question mark denotes an Optional type. Optional types can be assigned nil.
var alwaysString: String = "Hello, playground"
var sometimesString: String? = "Hello, playground"

sometimesString = nil
//alwaysString = nil // Nil cannot be assigned to type `String`


/*:
 There are a bunch of other types provided by `Foundation`. While the implementations vary across platforms, their
 interface doesn't, so you can write cross-platform Swift.
 */
let positive: Bool = true
let sum: Int = 4 + 3
let words = "every word with a space".split(separator: " ") // [String.SubSequence], basically [String]
var array: [Int] = [1, 2]
array.append(contentsOf: [3, 4, 5])
let enteredText = readLine() ?? "None"


/*:
 ## Structs
 Structs are pass-by-value objects. They're generally preferred because side effects are obvious
 */
struct Quest {
    let name: String
    let experienceReward: Int
    var progress: Double
}

let fetchQuest = Quest(name: "Get the poker chip", experienceReward: 100, progress: 0.0)
var exploreQuest = Quest(name: "Explore Appalachia", experienceReward: 100, progress: 0.0)

//fetchQuest.experienceReward = 1000 // Cannot assign to property: 'experienceReward' is a 'let' constant
//exporeQuest.experienceReward = 1000 // Cannot assign to property: 'experienceReward' is a 'let' constant

//fetchQuest.progress = 0.5 // Cannot assign to property: 'fetchQuest' is a 'let' constant
exploreQuest.progress = 0.5

//fetchQuest = exploreQuest // Cannot assign to value: 'fetchQuest' is a 'let' constant
exploreQuest = fetchQuest

/*:
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

/*:
 ## Enums
 Enums enumerate various values, and provide a concise way to describe state
 */
enum Faction {
    case newCaliforniaRepublic, raiders, legion
}
let alliance = Faction.newCaliforniaRepublic

//: They can also have a base type
enum NumberFaction: Int {
    case newCaliforniaRepublic = 0
    case raiders, legion
}
var rival = NumberFaction(rawValue: 2) // .legion
rival = .raiders


/*:
 ## Functions
 So far, it's all been code snippets. Let's wrap those up in some functions
 */
func costToFastTravel(to placeName: String) -> Int {
    if placeName == "CAMP" {
        return 0
    }
    return 10
}
costToFastTravel(to: "Hoover Dam") // 10

//: Functions are a type, and can be passed as data
let cost: (String) -> Int = costToFastTravel

cost("CAMP") // 0
//: [Next](@next)
