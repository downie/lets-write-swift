//: [Next](@next)
//:# Modern Features
//:## Generics
class PriorityQueue<Type> {
    private var queue = [Type]()
    func push(element: Type) {
        queue.append(element)
    }
    func getHighestPriority() -> Type? {
        return queue.popLast()
    }
}
