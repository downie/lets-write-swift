/*:
 [Previous](@previous)
 
 # Fun Stuff
 ## Pattern Matching
 Pattern matching really helps make intent clear in code. The `switch` statement is super powerful:
 */
import Foundation
import UIKit

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

//: It's also useful to match over a tuple of multiple values when you're tryin go express more complex state
let task = URLSession.shared.dataTask(with: URL(string: "http://google.com")!) { (data, response, error) in
    switch (data, response, error) {
    case let (.some(data), _, nil):
        print("We got data: \(data)")
    case let (_, nil, .some(error)):
        print("We have an error, but no response. That's odd. \(error)");
    case let (_, response as HTTPURLResponse, .some(error)) where (500...599).contains(response.statusCode):
        print("We got an error: \(error) because the user wasn't authenticated")
    case let (_, response as HTTPURLResponse, .some(error)):
        print("Got error: \(error) with HTTP Status code: \(response.statusCode)")
    default:
        print("Something else happened!")
    }
}

//: You can even define your own operator for your own types to help with comparisons
enum Colorish {
    case reddish, greenish, bluish
}

func ~=(pattern: Colorish, value: UIColor) -> Bool {
    guard let components = value.cgColor.components else {
        return false
    }
    guard components.count >= 3 else {
        return false
    }
    let redValue = components[0]
    let greenValue = components[1]
    let blueValue = components[2];
    
    switch pattern {
    case .reddish:
        return max(redValue, greenValue, blueValue) == redValue
    case .greenish:
        return max(redValue, greenValue, blueValue) == greenValue
    case .bluish:
        return max(redValue, greenValue, blueValue) == blueValue
    }
}

let color = UIColor.init(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.0)
switch color {
case .reddish:
    print("It's kinda red")
case .greenish:
    print("It's kinda green")
case .bluish:
    print("It's kinda blue")
default:
    print("This color cannot be described")
}

//: But I'm not sure that's needed. Unless those types are really well understood, your code is more readable and
//: maintainable without it

//: [Next](@next)
