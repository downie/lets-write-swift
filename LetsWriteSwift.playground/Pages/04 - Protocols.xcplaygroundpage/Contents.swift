//: [Previous](@previous)
/*:
 # Protocols, Another great part of Swift
 
 Protocols are an abstraction, and how you can provide the equivalent of multiple-inheritance
 without a lot of the cost & complexity. Similar to mixins or abstract types.
 
 */

protocol Vendor {
    var availableCaps: Int
    func buy(item: Int)
}

//: [Next](@next)
