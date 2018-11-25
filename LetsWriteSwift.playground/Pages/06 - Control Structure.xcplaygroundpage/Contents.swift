//: [Previous](@previous)
/*:
 # Control Flow
 */

//: Similar to other languages, you can loop with for & while, and branch with if

//: There's also guard. This is like `unless` in other languages, but the intent is always that execution of a function ends if a guard's condition isn't met
func canAffordItem(myCaps: Int, cost: Int) -> Bool {
    guard cost < myCaps else {
        return false
    }
    return true
}

//: And there's `switch`. It's one of the most powerful branching statements, and our introduction to pattern matching.

let statusCode = 200
switch statusCode {
case 200:
    print("OK")
default:
    print("Oh no...")
}

switch statusCode {
case 100..<200:
    print("1xx response")
case 200..<300:
    print("2xx response")
case 300..<400:
    print("3xx response")
default:
    print("Something else")
}

//: [Next](@next)
