import Foundation

public struct Slot: Decodable {
    public var name: String? // taken from key

    public var attachment: Attachment?
    public var attachmentOmitted: Attachment?

    private struct CodingKeys: CodingKey {
        var intValue: Int?
        var stringValue: String
        init?(intValue: Int) { self.intValue = intValue; self.stringValue = "\(intValue)" }
        init?(stringValue: String) { self.stringValue = stringValue }
    }

    public init(from coder: Decoder) throws {
        let container = try coder.container(keyedBy: CodingKeys.self)
        var name: String?
        for key in container.allKeys {
            if key.stringValue.contains("-omitted") {
                attachmentOmitted = try container.decode(Attachment.self, forKey: key)
            } else {
                attachment = try container.decode(Attachment.self, forKey: key)
                name = key.stringValue.name(before: "-attachment")
            }
        }
        attachment?.name = name
        attachmentOmitted?.name = name
    }

}

