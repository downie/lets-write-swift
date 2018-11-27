/*:
 [Previous](@previous)
 
 # Modern Features
 ## Protocols
 Similar to abstract or virtual types, Protocols define an interface that structs or classes can conform to.
 */
protocol Edible {
    var healthRestored: Double { get }
    func eat()
}

/*:
 Protocol conformance looks just like inheritance. Notably, structs can only conform to protocols, whereas classes
 could have parent classes and protocols. 
 */
struct NukaCola: Edible {
    var healthRestored: Double
    func eat() {}
}

let cola = NukaCola(healthRestored: 0.2)
cola.eat()

//: [Next](@next)
