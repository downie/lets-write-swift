/*:
 [Previous](@previous)
 
 # Modern Features
 ## Closures
 Functions are great, but sometimes you only want to define a function once, where it's used. That's where closures
 can come in.
 */
let name = "Chris"
let greeting = {
    "Hello, \(name)"
}
greeting()

/*:
 Closures can take in arguments, just like functions but with a different syntax
 */
let sayHello = { (to: String) in
    return "Hello, \(name)"
}
sayHello("Chris")

/*:
 If the last argument to a method is a function, you can use trailing closure syntax to make it look better. These
 three implementations are identical.
 */
let firstEven = [1, 2, 3, 4, 5].first(where: { number -> Bool in
    return number % 2 == 0
})

let shortFirstEven = [1, 2, 3, 4, 5].first { number in
    number % 2 == 0
}

let shortest = [1, 2, 3, 4, 5].first { $0 % 2 == 0 }

//: [Next](@next)
