//: [Next](@next)
import UIKit
func ~=(pattern: Colorish, value: UIColor) -> Bool {
    // Get each color component
    guard let components = value.cgColor.components else {
        return false
    }
    guard components.count >= 3 else {
        return false
    }
    let redValue = components[0]
    let greenValue = components[1]
    let blueValue = components[2]
    
    // See if the strongest color component matches our color-ish
    switch pattern {
    case .reddish:
        return max(redValue, greenValue, blueValue) == redValue
    case .greenish:
        return max(redValue, greenValue, blueValue) == greenValue
    case .bluish:
        return max(redValue, greenValue, blueValue) == blueValue
    }
}
