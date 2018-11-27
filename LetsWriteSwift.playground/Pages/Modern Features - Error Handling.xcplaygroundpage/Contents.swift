/*:
 [Previous](@previous)
 
 # Modern Features
 ## Error Handling
 Some functions can fail spectacularly, to the point where they just can't continue on and return the type they
 promised. Swift enforces that the author knows when they use a method that could fail like that, and makes sure they
 account for it.
 */
enum ExampleError: Error {
    case impossible
}

func divide(_ x: Int, by y: Int) throws -> Double {
    guard y != 0 else {
        throw ExampleError.impossible
    }
    return Double(x) / Double(y)
}

//divide(10, by: 2)
// Call can throw but is not marked by 'try'

//: Any code that throws needs to be labeled with `try`. Wrap it in a `do`/`catch` block to handle the error
do {
    try divide(10, by: 2)
} catch {
    print("Error is \(error)")
}

//: Or, use `try?` to translate any errors to nil
let result = try? divide(10, by: 0)

//: [Next](@next)
