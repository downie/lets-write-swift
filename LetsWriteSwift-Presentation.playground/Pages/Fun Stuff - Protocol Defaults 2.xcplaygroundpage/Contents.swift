//: [Next](@next)
//:# Fun Stuff
//:## Protocol Defaults
struct WoodFloor: Buildable {
    var buildCost: Int
    func build() {
        print("Built it for \(buildCost)")
    }
}

let floor = WoodFloor(buildCost: 100)
floor.canBuild(at: Position(x: 10, y: 10))
