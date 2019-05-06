//: [Next](@next)
//:## Tuples for the Win
import Foundation

switch (state, data, response, error) {
case let (
    .loading,
    .some(data),
    response as HTTPURLResponse,
    _
) where (400...499).contains(response.statusCode):
    
    print("While we were loading, we got an authentication error with: \(data)")

default:
    print("A wild state has appeared!")
}

