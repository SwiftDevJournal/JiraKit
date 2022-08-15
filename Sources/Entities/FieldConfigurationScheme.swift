// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a field configuration scheme.
public struct FieldConfigurationScheme: Codable {
    /// The ID of the field configuration scheme.
    public var id: String
    /// The name of the field configuration scheme.
    public var name: String
    /// The description of the field configuration scheme.
    public var description: String?

    public init(id: String, name: String, description: String? = nil) {
        self.id = id
        self.name = name
        self.description = description
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
    }
}
