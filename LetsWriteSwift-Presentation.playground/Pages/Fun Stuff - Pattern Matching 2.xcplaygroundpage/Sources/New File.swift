import Foundation

public let response: String? = "Hahaha"

public enum Result<Type> {
    case success(value: Type)
    case failure(error: Error)
}

public enum ResponseError: Error {
    case missing
}

public func query() -> Result<String> {
    if let result = response {
        return .success(value: result)
    } else {
        return .failure(error: ResponseError.missing)
    }
}
