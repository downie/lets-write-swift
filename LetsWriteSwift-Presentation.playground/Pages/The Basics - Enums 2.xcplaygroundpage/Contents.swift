//: [Next](@next)
//:# The Basics
//:## Enums
enum NumberFaction: Int {
    case newCaliforniaRepublic = 0
    case raiders, legion
}
let rival = NumberFaction(rawValue: 78)
if let newVar = rival {
    newVar
}
rival = .raiders
rival?.rawValue
