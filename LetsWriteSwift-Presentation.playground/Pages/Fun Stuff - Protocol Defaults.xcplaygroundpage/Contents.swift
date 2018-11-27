protocol Buildable {
    var buildCost: Int { get }
    func canBuild(at: Position) -> Bool
    func build()
}

extension Buildable {
    func canBuild(at position: Position) -> Bool {
        return position.x >= 0 && position.y >= 0
    }
}

struct WoodFloor: Buildable {
    var buildCost: Int
    func build() {
        print("Built it for \(buildCost)")
    }
}

//: [Next](@next)
