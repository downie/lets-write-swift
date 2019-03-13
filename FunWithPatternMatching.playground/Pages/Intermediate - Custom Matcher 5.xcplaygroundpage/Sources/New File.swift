import UIKit

public func ~=(pattern: Colorish, value: UIColor) -> Bool {
    guard let components = value.cgColor.components else {
        return false
    }
    guard components.count >= 3 else {
        return false
    }
    let redValue = components[0]
    let greenValue = components[1]
    let blueValue = components[2];
    
    switch pattern {
    case .reddish:
        return max(redValue, greenValue, blueValue) == redValue
    case .greenish:
        return max(redValue, greenValue, blueValue) == greenValue
    case .bluish:
        return max(redValue, greenValue, blueValue) == blueValue
    }
}
