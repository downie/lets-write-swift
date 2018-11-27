/*:
 [Previous](@previous)
 
 # The Basics
 ## Types & Type Safety
 
 Variables declared with `var` can, well, vary. Variables declare with `let` can't change
 */
var greeting = "Good morning!"
if isItAfterNoon {
    greeting = "Good evening!"
}
print(greeting)

let result = "War, war never changes."
//result = "War changed."
// Cannot assign to value: 'result' is a 'let' constant

/*:
 That was stongly typed, but the types were all inferred by the compiler. You can be explicit about types, and use
 Optionals when there's a chance something can be nil
 */
//: A question mark denotes an Optional type. Optional types can be assigned nil.
var alwaysString: String = "Hello, playground"
var sometimesString: String? = "Hello, playground"

sometimesString = nil
//alwaysString = nil
// Nil cannot be assigned to type `String`

/*:
 There are a bunch of other types provided by `Foundation`. While the implementations vary across platforms, their
 interface doesn't, so you can write cross-platform Swift.
 */
let positive: Bool = true
let sum: Int = 4 + 3
let words = "every word with a space".split(separator: " ") // [String.SubSequence], basically [String]
var array: [Int] = [1, 2]
array.append(contentsOf: [3, 4, 5])
let enteredText = readLine() ?? "None"

//: [Next](@next)
