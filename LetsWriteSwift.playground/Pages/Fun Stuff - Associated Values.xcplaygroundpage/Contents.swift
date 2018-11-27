/*:
 [Previous](@previous)
 
 # Fun Stuff
 ## Associated Values with Enums
 You can associate values with enum cases to provide even more state with fewer cases.
 */
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
//: [Next](@next)
