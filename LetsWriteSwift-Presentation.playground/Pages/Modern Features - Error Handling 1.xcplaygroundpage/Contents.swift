//: [Next](@next)
//:# Modern Features
//:## Error Handling
enum ExampleError: Error {
    case impossible
}

func divide(_ x: Int, by y: Int) throws -> Double {
    guard y != 0 else {
        throw ExampleError.impossible
    }
    return Double(x) / Double(y)
}
