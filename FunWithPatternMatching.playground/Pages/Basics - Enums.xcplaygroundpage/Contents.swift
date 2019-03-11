//: [Next](@next)
//:# Fun with Pattern Matching
//:## Matching Enums
enum State {
    case created, loading, complete
}

let state = State.created
switch state {
case .created:
    print("We were just created!")
case .loading:
    print("We're loading some stuff.")
case .complete:
    print("We're done!")
}
