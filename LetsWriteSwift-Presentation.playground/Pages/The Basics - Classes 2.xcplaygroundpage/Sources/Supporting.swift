import Foundation

public class Inventory {
    public var items: [String]
    public let maxWeight: Double = 200
    public var currentWeight: Double = 0
    
    public init(withItems: [String]) {
        items = withItems
    }
}

public let myInventory = Inventory(withItems: ["Purified Water"])
public var vendorInventory = Inventory(withItems: ["NukaCola"])
