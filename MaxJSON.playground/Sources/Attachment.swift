import Foundation

public struct Attachment: Decodable {
    public var name: String? // taken from key

    public var path: String?
    public var x: Float?
    public var y: Float?
    public var scaleX: Float?
    public var scaleY: Float?
    public var rotation: Float?
    public var width: Float?
    public var height: Float?
    public var color: String? // TODO: m.b. hex to UIColor?
    public var type: String?
    public var vertexCount: Int?
    public var vertices: [Float]?
    public var triangles: [Int]?
    public var hull: Int?
    public var edges: [Int]?
    public var uvs: [Float]?
    public var parent: String?
    public var deform: Bool?
    public var closed: Bool?
    public var constantSpeed: Bool?
    public var lengths: [Float]?
    public var end: String?
    public init() { }
}
