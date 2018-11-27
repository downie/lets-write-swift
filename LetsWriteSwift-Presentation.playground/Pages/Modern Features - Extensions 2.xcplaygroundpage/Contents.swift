//: [Next](@next)
//:# Modern Features
//:## Extensions
extension String {
    var dots: String {
        return (0..<self.count).map { _ -> String in
            "•"
            }.joined()
    }
}

let dottedString = "hello".dots
