//: [Next](@next)
//:## URLSession + state
import Foundation

let state = State.loading

let task = URLSession.shared.dataTask(with: url) {
    (data, response, error) in
    // Errors are bad
    guard error != nil else {
        return
    }
    // Missing data is bad
    guard let data = data else {
        return
    }
    // But now we have data so it's cool
    print(data)
}

