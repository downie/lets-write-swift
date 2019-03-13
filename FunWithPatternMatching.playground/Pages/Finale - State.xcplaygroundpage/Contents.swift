//: [Next](@next)
//:## Enumerated State
enum ResponseState {
    case authenticationErrorWhileLoading
    case requestTimeout
    case requestDeclinedByServer
    case partialResponseWhileClearingCache
    // ...
}
