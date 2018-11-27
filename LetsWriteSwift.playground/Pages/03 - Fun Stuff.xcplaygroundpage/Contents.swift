//: [Previous](@previous)
/*:
 # Fun Stuff!
 There's a lot to like about some of the more specific parts of the Swift language. Let's take a look
 */


/*:
 ## Associated Types with Enums
 We already looked at a base type, but you can also have specific enum values with associated types
 */
enum Result<Type> {
    case success(value: Type)
    case failure(error: Error)
}

func query() -> Result<String> {
    if let result = response {
        return .success(value: result)
    } else {
        return .failure(error: ResponseError.missing)
    }
}

/*:
 ## Pattern Matching
 Pattern matching really helps make intent clear in code. The `switch` statement is super powerful:
 */
let httpCode = 200
// You can match on range
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

// When you're pattern matching, you can also deconstruct the associated types
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

/*:
 ## Conditional Extensions
 You can express specific type extensions, but only when certain conditions are met.
 */
extension Array where Element: Numeric {
    var sum: Element {
        return self.reduce(0, +)
    }
}

let numberSum = [1, 2, 3].sum
//let stringSum = ["1", "2", "3"].sum // 'sum' is undefined


/*:
 */

//: [Next](@next)
