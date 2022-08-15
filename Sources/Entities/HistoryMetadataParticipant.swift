// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of user or system associated with a issue history metadata item.
public struct HistoryMetadataParticipant: Codable {
    /// The ID of the user or system associated with a history record.
    public var id: String?
    /// The display name of the user or system associated with a history record.
    public var displayName: String?
    /// The key of the display name of the user or system associated with a history record.
    public var displayNameKey: String?
    /// The type of the user or system associated with a history record.
    public var type: String?
    /// The URL to an avatar for the user or system associated with a history record.
    public var avatarURL: String?
    /// The URL of the user or system associated with a history record.
    public var url: String?

    public init(id: String? = nil, displayName: String? = nil, displayNameKey: String? = nil, type: String? = nil, avatarURL: String? = nil, url: String? = nil) {
        self.id = id
        self.displayName = displayName
        self.displayNameKey = displayNameKey
        self.type = type
        self.avatarURL = avatarURL
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
        self.displayNameKey = try values.decodeIfPresent(String.self, forKey: "displayNameKey")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.avatarURL = try values.decodeIfPresent(String.self, forKey: "avatarUrl")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(displayName, forKey: "displayName")
        try values.encodeIfPresent(displayNameKey, forKey: "displayNameKey")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(avatarURL, forKey: "avatarUrl")
        try values.encodeIfPresent(url, forKey: "url")
    }
}
