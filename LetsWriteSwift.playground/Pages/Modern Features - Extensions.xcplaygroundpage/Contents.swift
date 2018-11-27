/*:
 [Previous](@previous)
 
 # Modern Features
 ## Extensions
 You can add protocol conformance and extra methods to any existing type, including system types
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
