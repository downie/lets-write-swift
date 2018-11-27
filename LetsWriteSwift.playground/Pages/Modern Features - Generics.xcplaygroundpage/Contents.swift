/*:
 [Previous](@previous)
 
 # Modern Features
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
