import Foundation

public struct Skin: Decodable {

    public var slots: [Slot] = []

    private struct CodingKeys: CodingKey {
        var intValue: Int?
        var stringValue: String
        init?(intValue: Int) { self.intValue = intValue; self.stringValue = "\(intValue)" }
        init?(stringValue: String) { self.stringValue = stringValue }
    }

    public init(from coder: Decoder) throws {
        let container = try coder.container(keyedBy: CodingKeys.self)
        for key in container.allKeys {
            var slot = try container.decode(Slot.self, forKey: key)
            slot.name = key.stringValue.name(before: "-slot")
            slots.append(slot)
        }
    }

}

