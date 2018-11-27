/*:
 [Previous](@previous)
 
 # Modern Features
 ## Closures
 Functions are great,
 */
let name = "Chris"
let greeting = {
    "Hello, \(name)"
}
greeting()

/*:
 Closures can take in arguments
 */
let sayHello = { (to: String) in
    return "Hello, \(name)"
}
sayHello("Chris")

/*:
 If the last argument to a method is a function, you can use trailing closure syntax to make it look better
 */
let firstEven = [1, 2, 3].first(where: { number -> Bool in
    return number % 2 == 0
})

let shortFirstEven = [1, 2, 3].first { number in
    number % 2 == 0
}

let shortest = [1, 2, 3].first { $0 % 2 == 0 }

//: [Next](@next)
