/*:
 [Previous](@previous)
 
 # Modern Features
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

//: [Next](@next)
