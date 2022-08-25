// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct IssueTypeUpdateBean: Codable {
    /// The unique name for the issue type. The maximum length is 60 characters.
    public var name: String?
    /// The description of the issue type.
    public var description: String?
    /// The ID of an issue type avatar.
    public var avatarID: Int64?

    public init(name: String? = nil, description: String? = nil, avatarID: Int64? = nil) {
        self.name = name
        self.description = description
        self.avatarID = avatarID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.avatarID = try values.decodeIfPresent(Int64.self, forKey: "avatarId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(avatarID, forKey: "avatarId")
    }
}
