/*:
 [Previous](@previous)
 
 # The Basics
 ## Structs
 Structs are pass-by-value objects. They're generally preferred to minimize shared & mutable state throughout your
 app. They also synthesize their own initializers to make using them even easier.
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

//: [Next](@next)
