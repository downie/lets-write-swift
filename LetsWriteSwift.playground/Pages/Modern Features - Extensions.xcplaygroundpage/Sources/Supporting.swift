import Foundation

protocol Edible {
    var healthRestored: Double { get }
    func eat()
}

struct NukaCola: Edible {
    var healthRestored: Double
    func eat() {}
}
