import Foundation

public class PriorityQueue<Type> {
    private var queue = [Type]()
    public func push(element: Type) {
        queue.append(element)
    }
    public func getHighestPriority() -> Type? {
        return queue.popLast()
    }
    
    public init() {}
}
