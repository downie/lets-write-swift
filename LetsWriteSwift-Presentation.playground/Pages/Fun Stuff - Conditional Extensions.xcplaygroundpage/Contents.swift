extension Array where Element: Numeric {
    var sum: Element {
        return self.reduce(0, +)
    }
}

let numberSum = [1, 2, 3].sum
//let stringSum = ["1", "2", "3"].sum

//: [Next](@next)
