//: [Next](@next)
//:## Tuples for the Win
// Inside the callback:
switch (state, data, response, error) {
case (.complete, _, _, _):
    break
    
case let (_, _, _, .some(error)):
    print(error)
    
default:
    print("A wild state has appeared!")
}
