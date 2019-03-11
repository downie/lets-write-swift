//: [Next](@next)
//:# The Basics
//:## Structs
struct Quest {
    let name: String
    let experienceReward: Int
    var progress: Double
}

let fetchQuest = Quest(name: "Get the poker chip", experienceReward: 100, progress: 0.0)
var exploreQuest = Quest(name: "Explore Appalachia", experienceReward: 100, progress: 0.0)

exploreQuest.progress = 0.5
