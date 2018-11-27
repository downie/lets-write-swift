//: [Next](@next)
//:# Modern Features
//:## Error Handling
do {
    try divide(10, by: 2)
} catch {
    print("Error is \(error)")
}
