// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of system avatars.
public struct SystemAvatars: Codable {
    /// A list of avatar details.
    public var system: [Avatar]?

    public init(system: [Avatar]? = nil) {
        self.system = system
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.system = try values.decodeIfPresent([Avatar].self, forKey: "system")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(system, forKey: "system")
    }
}
