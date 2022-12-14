// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of the users and groups to receive the notification.
public struct NotificationRecipients: Codable {
    /// Whether the notification should be sent to the issue's reporter.
    public var isReporter: Bool?
    /// Whether the notification should be sent to the issue's assignees.
    public var isAssignee: Bool?
    /// Whether the notification should be sent to the issue's watchers.
    public var isWatchers: Bool?
    /// Whether the notification should be sent to the issue's voters.
    public var isVoters: Bool?
    /// List of users to receive the notification.
    public var users: [UserDetails]?
    /// List of groups to receive the notification.
    public var groups: [GroupName]?
    /// List of groupIds to receive the notification.
    public var groupIDs: [String]?

    public init(isReporter: Bool? = nil, isAssignee: Bool? = nil, isWatchers: Bool? = nil, isVoters: Bool? = nil, users: [UserDetails]? = nil, groups: [GroupName]? = nil, groupIDs: [String]? = nil) {
        self.isReporter = isReporter
        self.isAssignee = isAssignee
        self.isWatchers = isWatchers
        self.isVoters = isVoters
        self.users = users
        self.groups = groups
        self.groupIDs = groupIDs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isReporter = try values.decodeIfPresent(Bool.self, forKey: "reporter")
        self.isAssignee = try values.decodeIfPresent(Bool.self, forKey: "assignee")
        self.isWatchers = try values.decodeIfPresent(Bool.self, forKey: "watchers")
        self.isVoters = try values.decodeIfPresent(Bool.self, forKey: "voters")
        self.users = try values.decodeIfPresent([UserDetails].self, forKey: "users")
        self.groups = try values.decodeIfPresent([GroupName].self, forKey: "groups")
        self.groupIDs = try values.decodeIfPresent([String].self, forKey: "groupIds")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isReporter, forKey: "reporter")
        try values.encodeIfPresent(isAssignee, forKey: "assignee")
        try values.encodeIfPresent(isWatchers, forKey: "watchers")
        try values.encodeIfPresent(isVoters, forKey: "voters")
        try values.encodeIfPresent(users, forKey: "users")
        try values.encodeIfPresent(groups, forKey: "groups")
        try values.encodeIfPresent(groupIDs, forKey: "groupIds")
    }
}
