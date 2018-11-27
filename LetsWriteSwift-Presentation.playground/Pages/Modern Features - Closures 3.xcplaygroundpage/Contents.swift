//: [Next](@next)
//:# Modern Features
//:## Closures
let firstEven = [1, 2, 3, 4, 5].first(where: { number -> Bool in
    return number % 2 == 0
})
