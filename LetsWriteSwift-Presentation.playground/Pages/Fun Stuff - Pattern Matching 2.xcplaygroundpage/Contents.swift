switch query() {
case .success(let result) where result.count < 3:
    print("Success with a short string: \(result)")
case .success(let result):
    print("Success with a longer string: \(result)")
case .failure:
    print("We've failed, but ignore the error")
}
//: [Next](@next)
