//: [Next](@next)
//:## Matching Color-ish!
import UIKit
let color = UIColor(red: 0.0, green: 1.0, blue: 0.3, alpha: 0.0)
switch color {
case .reddish:
    print("It's kinda red")
case .greenish:
    print("It's kinda green")
case .bluish:
    print("It's kinda blue")
default:
    print("This color cannot be described")
}
