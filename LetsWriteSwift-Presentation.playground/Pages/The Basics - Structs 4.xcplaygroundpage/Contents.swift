//: [Next](@next)
//:# The Basics
//:## Structs
let fetchQuest = Quest(name: "Get the poker chip", experienceReward: 100, progress: 0.0)
var exploreQuest = Quest(name: "Explore Appalachia", experienceReward: 100, progress: 0.0)

fetchQuest = exploreQuest
exploreQuest = fetchQuest
