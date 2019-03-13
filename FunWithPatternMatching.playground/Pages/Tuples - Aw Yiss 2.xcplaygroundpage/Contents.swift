//: [Next](@next)
//:## Tuples for the Win
import Foundation

switch (state, data, response, error) {
case let (
    .loading,
    _,
    response as HTTPURLResponse,
    .some(error)
) where (500...599).contains(response.statusCode):
    
    print("While we were loading, we got an authentication error: \(error)")

default:
    print("A wild state has appeared!")
}
