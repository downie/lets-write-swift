//: [Next](@next)
//:## Matching Color-ish?
import UIKit

enum Colorish {
    case reddish, greenish, bluish
}

let color = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.0)
switch color {
//case .reddish:
//    print("It's kinda red")
default:
    print("This color cannot be described")
}
