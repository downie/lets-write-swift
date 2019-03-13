//: [Next](@next)
//:## URLSession + state
import Foundation

let state = State.loading

let task = URLSession.shared.dataTask(with: url) {
    (data, response, error) in
    // ... all our guards
    switch state {
    case .complete:
        print("Do something...")
    case .loading:
        print("Do something else...")
    default:
        print("Don't do anything.")
    }
}

