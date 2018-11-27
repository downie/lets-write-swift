/*:
 [Previous](@previous)
 
 # The Basics
 ## Functions
 Most of what we've seen here has been code snippets. Let's look at how we wrap bits of code in functions.
 
 Functions have:
   - a name
   - a list of arguments, with an external and an internal name
   - a return type (after `->`)
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
