import Foundation
import UIKit

public enum Colorish {
    case reddish, greenish, bluish
}

public func ~=(pattern: Colorish, value: UIColor) -> Bool {
    return true
}
