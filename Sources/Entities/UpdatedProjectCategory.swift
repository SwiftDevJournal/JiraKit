// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A project category.
public struct UpdatedProjectCategory: Codable {
    /// The URL of the project category.
    public var this: String?
    /// The ID of the project category.
    public var id: String?
    /// The name of the project category.
    public var description: String?
    /// The description of the project category.
    public var name: String?

    public init(this: String? = nil, id: String? = nil, description: String? = nil, name: String? = nil) {
        self.this = this
        self.id = id
        self.description = description
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(String.self, forKey: "self")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(name, forKey: "name")
    }
}