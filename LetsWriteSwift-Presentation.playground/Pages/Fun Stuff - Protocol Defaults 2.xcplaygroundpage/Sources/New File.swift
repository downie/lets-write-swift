import Foundation

public struct Position {
    public let x: Int
    public let y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

public protocol Buildable {
    var buildCost: Int { get }
    func canBuild(at: Position) -> Bool
    func build()
}

public extension Buildable {
    func canBuild(at position: Position) -> Bool {
        return position.x >= 0 && position.y >= 0
    }
}
