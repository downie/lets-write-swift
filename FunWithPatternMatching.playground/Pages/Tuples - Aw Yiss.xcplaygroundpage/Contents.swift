//: [Next](@next)
//:## Tuples for the Win
switch (state, data, response, error) {
case (.complete, _, _, _):
    break
    
case let (_, _, _, .some(actualError)):
    print(actualError)
    
default:
    print("A wild state has appeared!")
}
