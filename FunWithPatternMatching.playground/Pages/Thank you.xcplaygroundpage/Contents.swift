//:# Questions?
enum Err: Error {
    case hulkSmash
}

class Package {
    func computeCost() throws -> Double {
        return 5.0
    }
    func throwPackage() throws -> Double {
        throw Err.hulkSmash
    }
}

let package: Package? = Package()
let result1: Double?? = try? package?.computeCost()
let result2: Double?  = try? package?.computeCost() ?? 0.0
let result3: Double?  = (try? package?.computeCost()) ?? 0.0 // really?!
let result4: Double   = (try? package?.computeCost() ?? 0.0) ?? 0.0
let result5: Double?  = (try? package?.computeCost()) ?? 0.0 ?? 0.0 // omfg
//                                                           ^
// warning: Left side of nil coalescing operator '??' has non-optional
//          type 'Double', so the right side is never used
//
let result6: Double?  = try? package?.throwPackage() ?? 0.0 // nil
let result7: Double?  = (try? package?.throwPackage()) ?? 0.0 // 0



//:## Chris Downie
//:### 📩 cdownie@bignerdranch.com
//:### 🐦 @cdownie
