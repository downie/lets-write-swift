/*:
 [Previous](@previous)
 
 # Modern Features
 ## Extensions
 You can extend a type's implementation to give it additional functionality. This can be used to group specific parts
 of your implementation together, or to add functionality to one of the provided Foundation types.
 */
extension NukaCola {
    func removeCap() {}
}

extension String {
    var dots: String {
        return (0..<self.count).map { _ -> String in
            "•"
            }.joined()
    }
}

let dottedString = "hello".dots

//: [Next](@next)
