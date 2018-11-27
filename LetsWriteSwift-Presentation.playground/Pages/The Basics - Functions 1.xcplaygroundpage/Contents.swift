//: [Next](@next)
//:# The Basics
//:## Functions
func costToFastTravel(to placeName: String) -> Int {
    if placeName == "CAMP" {
        return 0
    }
    return 10
}
costToFastTravel(to: "Hoover Dam")
