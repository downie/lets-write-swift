//: [Previous](@previous)
/*:
 # Functions and closures
 */
import Foundation
//: Functions are declared with func and named parameters
func sayHello() {
    print("hello")
}
sayHello()

func takePicture() -> Data? {
    return nil
}
takePicture()

func sell(weaponID: Int, forCaps: Int) -> Bool {
    return false
}
sell(weaponID: 4, forCaps: 100)

func fastTravel(to destinationID: Int, for event: Int? = nil) {
    
}
fastTravel(to: 100)
fastTravel(to: 100, for: 200)

//: [Next](@next)
