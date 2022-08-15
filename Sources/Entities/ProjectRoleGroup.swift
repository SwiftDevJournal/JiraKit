// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of the group associated with the role.
public struct ProjectRoleGroup: Codable {
    /// The display name of the group.
    public var displayName: String?
    /// The name of the group. As a group's name can change, use of `groupId` is recommended to identify the group.
    public var name: String?
    /// The ID of the group.
    public var groupID: String?

    public init(displayName: String? = nil, name: String? = nil, groupID: String? = nil) {
        self.displayName = displayName
        self.name = name
        self.groupID = groupID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.groupID = try values.decodeIfPresent(String.self, forKey: "groupId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(displayName, forKey: "displayName")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(groupID, forKey: "groupId")
    }
}
