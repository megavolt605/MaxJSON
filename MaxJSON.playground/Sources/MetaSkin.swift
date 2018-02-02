import Foundation

public struct MetaSkin: Decodable {

    public var skin: Skin

    private struct CodingKeys: CodingKey {
        var intValue: Int?
        var stringValue: String
        init?(intValue: Int) { self.intValue = intValue; self.stringValue = "\(intValue)" }
        init?(stringValue: String) { self.stringValue = stringValue }
    }

    public init(from coder: Decoder) throws {
        let container = try coder.container(keyedBy: CodingKeys.self)
        let key = container.allKeys.first!
        skin = try container.decode(Skin.self, forKey: key)
    }

}

