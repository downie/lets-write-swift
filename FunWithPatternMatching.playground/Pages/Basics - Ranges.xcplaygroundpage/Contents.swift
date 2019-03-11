//: [Next](@next)
//:# Fun with Pattern Matching
//:## Matching Ranges
let httpStatusCode = 404
switch httpStatusCode {
case 100..<200:
    print("We got a 1xx code")
case 203, 204:
    print("We got a redirect code.")
case 200..<300:
    print("We got a 2xx code")
default:
    print("We got some other code")
}
