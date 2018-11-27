/*:
 [Previous](@previous)
 
 # Fun Stuff
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

//: [Next](@next)
