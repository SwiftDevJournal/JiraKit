// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a worklog.
public struct Worklog: Codable {
    /// The URL of the worklog item.
    public var this: URL?
    /// Details of the user who created the worklog.
    public var author: UserDetails?
    /// Details of the user who last updated the worklog.
    public var updateAuthor: UserDetails?
    /// A comment about the worklog in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/). Optional when creating or updating a worklog.
    public var comment: AnyJSON?
    /// The datetime on which the worklog was created.
    public var created: Date?
    /// The datetime on which the worklog was last updated.
    public var updated: Date?
    /// Details about any restrictions in the visibility of the worklog. Optional when creating or updating a worklog.
    public var visibility: Visibility?
    /// The datetime on which the worklog effort was started. Required when creating a worklog. Optional when updating a worklog.
    public var started: Date?
    /// The time spent working on the issue as days (\#d), hours (\#h), or minutes (\#m or \#). Required when creating a worklog if `timeSpentSeconds` isn't provided. Optional when updating a worklog. Cannot be provided if `timeSpentSecond` is provided.
    public var timeSpent: String?
    /// The time in seconds spent working on the issue. Required when creating a worklog if `timeSpent` isn't provided. Optional when updating a worklog. Cannot be provided if `timeSpent` is provided.
    public var timeSpentSeconds: Int64?
    /// The ID of the worklog record.
    public var id: String?
    /// The ID of the issue this worklog is for.
    public var issueID: String?
    /// Details of properties for the worklog. Optional when creating or updating a worklog.
    public var properties: [EntityProperty]?

    public init(this: URL? = nil, author: UserDetails? = nil, updateAuthor: UserDetails? = nil, comment: AnyJSON? = nil, created: Date? = nil, updated: Date? = nil, visibility: Visibility? = nil, started: Date? = nil, timeSpent: String? = nil, timeSpentSeconds: Int64? = nil, id: String? = nil, issueID: String? = nil, properties: [EntityProperty]? = nil) {
        self.this = this
        self.author = author
        self.updateAuthor = updateAuthor
        self.comment = comment
        self.created = created
        self.updated = updated
        self.visibility = visibility
        self.started = started
        self.timeSpent = timeSpent
        self.timeSpentSeconds = timeSpentSeconds
        self.id = id
        self.issueID = issueID
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.author = try values.decodeIfPresent(UserDetails.self, forKey: "author")
        self.updateAuthor = try values.decodeIfPresent(UserDetails.self, forKey: "updateAuthor")
        self.comment = try values.decodeIfPresent(AnyJSON.self, forKey: "comment")
        self.created = try values.decodeIfPresent(Date.self, forKey: "created")
        self.updated = try values.decodeIfPresent(Date.self, forKey: "updated")
        self.visibility = try values.decodeIfPresent(Visibility.self, forKey: "visibility")
        self.started = try values.decodeIfPresent(Date.self, forKey: "started")
        self.timeSpent = try values.decodeIfPresent(String.self, forKey: "timeSpent")
        self.timeSpentSeconds = try values.decodeIfPresent(Int64.self, forKey: "timeSpentSeconds")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.issueID = try values.decodeIfPresent(String.self, forKey: "issueId")
        self.properties = try values.decodeIfPresent([EntityProperty].self, forKey: "properties")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(author, forKey: "author")
        try values.encodeIfPresent(updateAuthor, forKey: "updateAuthor")
        try values.encodeIfPresent(comment, forKey: "comment")
        try values.encodeIfPresent(created, forKey: "created")
        try values.encodeIfPresent(updated, forKey: "updated")
        try values.encodeIfPresent(visibility, forKey: "visibility")
        try values.encodeIfPresent(started, forKey: "started")
        try values.encodeIfPresent(timeSpent, forKey: "timeSpent")
        try values.encodeIfPresent(timeSpentSeconds, forKey: "timeSpentSeconds")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(issueID, forKey: "issueId")
        try values.encodeIfPresent(properties, forKey: "properties")
    }
}
