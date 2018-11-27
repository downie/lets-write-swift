import Foundation

public protocol Edible {
    var healthRestored: Double { get }
    func eat()
}
