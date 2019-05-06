import Foundation

public let state = State.loading
public let data: Data? = Data()
public let response: URLResponse? = URLResponse(
    url: URL(string: "http://google.com")!,
    mimeType: "mime",
    expectedContentLength: 100,
    textEncodingName: "utf-8")
public let error: Error? = nil
