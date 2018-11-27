//: [Next](@next)
//:# Fun Stuff
//:## Associated Values
enum Result<Type> {
    case success(value: Type)
    case failure(error: Error)
}

func query() -> Result<String> {
    if let result = response {
        return .success(value: result)
    } else {
        return .failure(error: ResponseError.missing)
    }
}
