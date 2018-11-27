//: [Previous](@previous)
/*:
 [Previous](@previous)
 
 # Modern Features
 ## Error Handling
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
do {
    try divide(10, by: 2)
} catch {
    print("Error is \(error)")
}

//: [Next](@next)
