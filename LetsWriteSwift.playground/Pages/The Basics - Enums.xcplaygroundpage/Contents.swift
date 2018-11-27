/*:
 [Previous](@previous)
 
 # The Basics
 ## Enums
 Enums enumerate various values, and provide a concise way to describe state
 */
enum Faction {
    case newCaliforniaRepublic, raiders, legion
}
let alliance = Faction.newCaliforniaRepublic

//: They can also have a base type
enum NumberFaction: Int {
    case newCaliforniaRepublic = 0
    case raiders, legion
}
var rival = NumberFaction(rawValue: 2) // .legion
rival = .raiders
rival?.rawValue

//: [Next](@next)
