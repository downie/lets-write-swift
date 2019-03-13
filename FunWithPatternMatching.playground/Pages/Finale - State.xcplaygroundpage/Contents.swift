//: [Next](@next)
//:## Enumerated Response State
enum ResponseState {
    case authenticationErrorWhileLoading
    case requestTimeout
    case requestDeclinedByServer
    case partialResponseWhileClearingCache
    // ...
}
