import Foundation

public struct Quest {
    let name: String
    let experienceReward: Int
    var progress: Double
    
    public init(name: String, experienceReward: Int, progress: Double) {
        self.name = name
        self.experienceReward = experienceReward
        self.progress = progress
    }
}
