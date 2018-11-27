/*:
 [Previous](@previous)
 
 # The Basics
 ## Functions
 So far, it's all been code snippets. Let's wrap those up in some functions
 */
func costToFastTravel(to placeName: String) -> Int {
    if placeName == "CAMP" {
        return 0
    }
    return 10
}
costToFastTravel(to: "Hoover Dam")

//: Functions are a type, and can be passed as data
let cost: (String) -> Int = costToFastTravel

cost("CAMP")

//: [Next](@next)
