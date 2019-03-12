//: [Next](@next)
//:# Fun with Pattern Matching
//:## Matching Enums
switch state {
case .created:
    print("We were just created!")
case .loading:
    print("We're loading some stuff.")
case .complete:
    print("We're done!")
}
