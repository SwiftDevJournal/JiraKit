// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of users and groups found in a search.
public struct FoundUsersAndGroups: Codable {
    /// The list of users found in a search, including header text (Showing X of Y matching users) and total of matched users.
    public var users: FoundUsers?
    /// The list of groups found in a search, including header text (Showing X of Y matching groups) and total of matched groups.
    public var groups: FoundGroups?

    public init(users: FoundUsers? = nil, groups: FoundGroups? = nil) {
        self.users = users
        self.groups = groups
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.users = try values.decodeIfPresent(FoundUsers.self, forKey: "users")
        self.groups = try values.decodeIfPresent(FoundGroups.self, forKey: "groups")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(users, forKey: "users")
        try values.encodeIfPresent(groups, forKey: "groups")
    }
}