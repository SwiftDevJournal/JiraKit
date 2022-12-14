// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The identifiers for a project.
public struct ProjectIdentifierBean: Codable {
    /// The ID of the project.
    public var id: Int64?
    /// The key of the project.
    public var key: String?

    public init(id: Int64? = nil, key: String? = nil) {
        self.id = id
        self.key = key
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
    }
}
