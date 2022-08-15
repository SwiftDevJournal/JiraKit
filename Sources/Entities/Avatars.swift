// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about system and custom avatars.
public struct Avatars: Codable {
    /// System avatars list.
    public var system: [Avatar]?
    /// Custom avatars list.
    public var custom: [Avatar]?

    public init(system: [Avatar]? = nil, custom: [Avatar]? = nil) {
        self.system = system
        self.custom = custom
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.system = try values.decodeIfPresent([Avatar].self, forKey: "system")
        self.custom = try values.decodeIfPresent([Avatar].self, forKey: "custom")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(system, forKey: "system")
        try values.encodeIfPresent(custom, forKey: "custom")
    }
}
