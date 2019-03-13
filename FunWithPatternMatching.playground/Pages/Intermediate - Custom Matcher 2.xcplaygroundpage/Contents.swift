//: [Next](@next)
//:## Matching Color-ish?
import UIKit

func ~=(pattern: Colorish, value: UIColor) -> Bool {
    return true
}

switch color {
case .greenish:
    print("It's kinda green")
default:
    print("This color cannot be described")
}
