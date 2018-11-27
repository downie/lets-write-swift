/*:
 [Previous](@previous)
 
 # Fun Stuff
 ## Pattern Matching
 Pattern matching really helps make intent clear in code. The `switch` statement is super powerful:
 */
let httpCode = 200
switch httpCode {
case 100..<200:
    print("We got a 1xx code")
case 203, 204:
    print("We got a redirect code.")
case 200..<300:
    print("We got a 2xx code")
default:
    print("We got some other code")
}

//: When you're pattern matching, you can also deconstruct the associated types
switch query() {
case .success(let result) where result.count < 3:
    print("Success with a short string: \(result)")
case .success(let result):
    print("Success with a longer string: \(result)")
case .failure:
    print("We've failed, but ignore the error")
}

//: You can also do pattern matching inside an if condition
if case .success = query() {
    print("You can use pattern matching without `switch`")
}
//: [Next](@next)
