// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A field within a field configuration.
public struct FieldConfigurationItem: Codable {
    /// The ID of the field within the field configuration.
    public var id: String
    /// The description of the field within the field configuration.
    public var description: String?
    /// Whether the field is hidden in the field configuration.
    public var isHidden: Bool?
    /// Whether the field is required in the field configuration.
    public var isRequired: Bool?
    /// The renderer type for the field within the field configuration.
    public var renderer: String?

    public init(id: String, description: String? = nil, isHidden: Bool? = nil, isRequired: Bool? = nil, renderer: String? = nil) {
        self.id = id
        self.description = description
        self.isHidden = isHidden
        self.isRequired = isRequired
        self.renderer = renderer
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.isHidden = try values.decodeIfPresent(Bool.self, forKey: "isHidden")
        self.isRequired = try values.decodeIfPresent(Bool.self, forKey: "isRequired")
        self.renderer = try values.decodeIfPresent(String.self, forKey: "renderer")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(isHidden, forKey: "isHidden")
        try values.encodeIfPresent(isRequired, forKey: "isRequired")
        try values.encodeIfPresent(renderer, forKey: "renderer")
    }
}
