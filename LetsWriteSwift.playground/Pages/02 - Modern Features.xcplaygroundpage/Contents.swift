//: [Previous](@previous)
/*:
 # Modern Features
 Check out these newer techniques
 */
/*:
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

/*:
 ## Protocols
 Similar to abstract types
 */
protocol Edible {
    var healthRestored: Double { get }
    func eat()
}

struct NukaCola: Edible {
    var healthRestored: Double
    func eat() {}
}

/*:
 ## Extensions
 You can add protocol conformance and extra methods to any existing type, including system types
 */
extension NukaCola {
    func removeCap() {}
}

extension String {
    var dots: String {
        return (0..<self.count).map { _ -> String in
            "•"
        }.joined()
    }
}

let dottedString = "hello".dots

/*:
 ## Error Handling
 
 */
enum ExampleError: Error {
    case impossible
}

func divide(_ x: Int, by y: Int) throws -> Double {
    guard y != 0 else {
        throw ExampleError.impossible
    }
    return Double(x) / Double(y)
}

//divide(10, by: 2) // Call can throw but is not marked by 'try'
do {
    try divide(10, by: 2)
} catch {
    print("Error is \(error)")
}

/*:
 ## Generics
 Generics let you use dependant types as a variable.
 */

class PriorityQueue<Type> {
    private var queue = [Type]()
    func push(element: Type) {
        queue.append(element)
    }
    func getHighestPriority() -> Type? {
        return queue.popLast()
    }
}

let intQueue = PriorityQueue<Int>()
intQueue.push(element: 100)
let stringQueue = PriorityQueue<String>()
stringQueue.push(element: "100")



//: [Next](@next)
