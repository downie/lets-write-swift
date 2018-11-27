/*:
 [Previous](@previous)
 
 # Modern Features
 ## Generics
 Generics let you abstract away a dependent type, so you can provide general implementations that are still type-safe
 when used.
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
