import Foundation

public func ~=(pattern: ResponseState, value: (State, Data?, URLResponse?, Error?)) -> Bool {
    return Bool.random()
}

public enum ResponseState {
    case authenticationErrorWhileLoading
    case requestTimeout
    case requestDeclinedByServer
    case partialResponseWhileClearingCache
}

public let state = State.loading
public let data: Data? = Data()
public let response: URLResponse? = URLResponse(
    url: URL(string: "http://google.com")!,
    mimeType: "mime",
    expectedContentLength: 100,
    textEncodingName: "utf-8")
public let error: Error? = nil

