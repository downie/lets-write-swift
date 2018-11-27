/*:
 [Previous](@previous)
 
 # The Basics
 ## Enums
 Enums enumerate various values, and provide a concise way to describe state or a set of related values. Unlike C-
 languages, enums don't need to have a base type...
 */
enum Faction {
    case newCaliforniaRepublic, raiders, legion
}
let alliance = Faction.newCaliforniaRepublic

/*:
 ...but if you want, you can specify a base type. Additional enum Int values are defined by incrementing the
 previous case's value.
*/
enum NumberFaction: Int {
    case newCaliforniaRepublic = 0
    case raiders, legion
}
var rival = NumberFaction(rawValue: 2)
rival = .raiders
rival?.rawValue

//: [Next](@next)
