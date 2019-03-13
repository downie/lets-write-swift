//: [Next](@next)
//:## Complex Enum State Matching
switch (state, data, response, error) {
case .authenticationErrorWhileLoading:
    print("This is very specific")
case .requestTimeout:
    print("It's so readable")
case .requestDeclinedByServer:
    print("But so opaque")
case .partialResponseWhileClearingCache:
    print("Please never do this")
default:
    print("A wild state has appeared!")
}
