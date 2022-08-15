// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A project category.
public struct ProjectCategory: Codable {
    /// The URL of the project category.
    public var this: URL?
    /// The ID of the project category.
    public var id: String?
    /// The name of the project category. Required on create, optional on update.
    public var name: String?
    /// The description of the project category.
    public var description: String?

    public init(this: URL? = nil, id: String? = nil, name: String? = nil, description: String? = nil) {
        self.this = this
        self.id = id
        self.name = name
        self.description = description
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
    }
}
