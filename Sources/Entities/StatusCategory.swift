// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A status category.
public struct StatusCategory: Codable {
    /// The URL of the status category.
    public var this: String?
    /// The ID of the status category.
    public var id: Int?
    /// The key of the status category.
    public var key: String?
    /// The name of the color used to represent the status category.
    public var colorName: String?
    /// The name of the status category.
    public var name: String?

    public init(this: String? = nil, id: Int? = nil, key: String? = nil, colorName: String? = nil, name: String? = nil) {
        self.this = this
        self.id = id
        self.key = key
        self.colorName = colorName
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(String.self, forKey: "self")
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.colorName = try values.decodeIfPresent(String.self, forKey: "colorName")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(colorName, forKey: "colorName")
        try values.encodeIfPresent(name, forKey: "name")
    }
}
