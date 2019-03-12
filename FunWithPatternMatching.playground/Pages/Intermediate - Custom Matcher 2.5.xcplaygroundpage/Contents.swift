//: [Next](@next)
//:# Fun with Pattern Matching
//:## Custom Matches
import UIKit

let color = UIColor.red

switch color {
case .greenish:
    print("It's kinda red")
default:
    print("This color cannot be described")
}
