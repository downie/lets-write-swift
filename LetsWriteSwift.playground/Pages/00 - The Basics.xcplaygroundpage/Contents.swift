/*:
 # The Basics of Swift
 
 Swift is a strongly typed language. Let's check it out!
 
 */

//: Variables declared with `var` can, well, vary. Variables declare with `let` can't change
var str = "Hello, world!"
str = "Welcome, everyone!"

let result = 100
//result = 50 // Cannot assign to value: 'result' is a 'let' constant

//: A question mark denotes an Optional type. Optional types can be assigned nil.
var alwaysString: String = "Hello, playground"
var sometimesString: String? = "Hello, playground"

sometimesString = nil
//alwaysString = nil // Nil cannot be assigned to type `String`

//: Foundation provides a lot of methods that you'd expect with the base types
let sum = 4 + 3
let words = "every word with a space".split(separator: " ")
var array = [1, 2]
array.append(contentsOf: [3, 4, 5])

print(array)

//: [Next](@next)
