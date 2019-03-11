//: [Next](@next)
//:# Fun with Pattern Matching
//:## Custom Matches
import UIKit

func ~=(pattern: Colorish, value: UIColor) -> Bool {
    return true
}

switch color {
case .greenish:
    print("It's kinda red")
default:
    print("This color cannot be described")
}
