//: [Next](@next)
//:# Modern Features
//:## Protocols
struct NukaCola: Edible {
    var healthRestored: Double
    func  eat() {
    }
    mutating func drink() {
        healthRestored += 0.3
    }
}

var cola = NukaCola(healthRestored: 0.2)
cola.drink()
