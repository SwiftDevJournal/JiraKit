// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The group or role to which this item is visible.
public struct Visibility: Codable {
    /// Whether visibility of this item is restricted to a group or role.
    public var type: `Type`?
    /// The name of the group or role that visibility of this item is restricted to. Please note that the name of a group is mutable, to reliably identify a group use `identifier`.
    public var value: String?
    /// The ID of the group or the name of the role that visibility of this item is restricted to.
    public var identifier: String?

    /// Whether visibility of this item is restricted to a group or role.
    public enum `Type`: String, Codable, CaseIterable {
        case group
        case role
    }

    public init(type: `Type`? = nil, value: String? = nil, identifier: String? = nil) {
        self.type = type
        self.value = value
        self.identifier = identifier
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
        self.value = try values.decodeIfPresent(String.self, forKey: "value")
        self.identifier = try values.decodeIfPresent(String.self, forKey: "identifier")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(value, forKey: "value")
        try values.encodeIfPresent(identifier, forKey: "identifier")
    }
}