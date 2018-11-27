//: [Next](@next)
//:# The Basics
//:## Enums
enum NumberFaction: Int {
    case newCaliforniaRepublic = 0
    case raiders, legion
}
var rival = NumberFaction(rawValue: 2)
rival = .raiders
rival?.rawValue
