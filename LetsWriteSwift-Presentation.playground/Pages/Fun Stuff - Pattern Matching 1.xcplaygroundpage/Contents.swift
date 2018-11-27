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


//: You can also do pattern matching inside an if condition

//: [Next](@next)
