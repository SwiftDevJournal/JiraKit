// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The details of the field configuration scheme.
public struct UpdateFieldConfigurationSchemeDetails: Codable {
    /// The name of the field configuration scheme. The name must be unique.
    public var name: String
    /// The description of the field configuration scheme.
    public var description: String?

    public init(name: String, description: String? = nil) {
        self.name = name
        self.description = description
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
    }
}
