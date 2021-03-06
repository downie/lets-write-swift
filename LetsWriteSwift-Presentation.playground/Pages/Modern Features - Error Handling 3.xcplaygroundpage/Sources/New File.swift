import Foundation

public enum ExampleError: Error {
    case impossible
}

public func divide(_ x: Int, by y: Int) throws -> Double {
    guard y != 0 else {
        throw ExampleError.impossible
    }
    return Double(x) / Double(y)
}
