// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A webhook.
public struct Webhook: Codable {
    /// The ID of the webhook.
    public var id: Int
    /// The JQL filter that specifies which issues the webhook is sent for.
    public var jqlFilter: String
    /// A list of field IDs. When the issue changelog contains any of the fields, the webhook `jira:issue_updated` is sent. If this parameter is not present, the app is notified about all field updates.
    public var fieldIDsFilter: [String]?
    /// A list of issue property keys. A change of those issue properties triggers the `issue_property_set` or `issue_property_deleted` webhooks. If this parameter is not present, the app is notified about all issue property updates.
    public var issuePropertyKeysFilter: [String]?
    /// The Jira events that trigger the webhook.
    public var events: [Event]
    /// The date after which the webhook is no longer sent. Use [Extend webhook life](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-webhooks/#api-rest-api-3-webhook-refresh-put) to extend the date.
    public var expirationDate: Int?

    public enum Event: String, Codable, CaseIterable {
        case jiraIssueCreated = "jira:issue_created"
        case jiraIssueUpdated = "jira:issue_updated"
        case jiraIssueDeleted = "jira:issue_deleted"
        case commentCreated = "comment_created"
        case commentUpdated = "comment_updated"
        case commentDeleted = "comment_deleted"
        case issuePropertySet = "issue_property_set"
        case issuePropertyDeleted = "issue_property_deleted"
    }

    public init(id: Int, jqlFilter: String, fieldIDsFilter: [String]? = nil, issuePropertyKeysFilter: [String]? = nil, events: [Event], expirationDate: Int? = nil) {
        self.id = id
        self.jqlFilter = jqlFilter
        self.fieldIDsFilter = fieldIDsFilter
        self.issuePropertyKeysFilter = issuePropertyKeysFilter
        self.events = events
        self.expirationDate = expirationDate
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.jqlFilter = try values.decode(String.self, forKey: "jqlFilter")
        self.fieldIDsFilter = try values.decodeIfPresent([String].self, forKey: "fieldIdsFilter")
        self.issuePropertyKeysFilter = try values.decodeIfPresent([String].self, forKey: "issuePropertyKeysFilter")
        self.events = try values.decode([Event].self, forKey: "events")
        self.expirationDate = try values.decodeIfPresent(Int.self, forKey: "expirationDate")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(jqlFilter, forKey: "jqlFilter")
        try values.encodeIfPresent(fieldIDsFilter, forKey: "fieldIdsFilter")
        try values.encodeIfPresent(issuePropertyKeysFilter, forKey: "issuePropertyKeysFilter")
        try values.encode(events, forKey: "events")
        try values.encodeIfPresent(expirationDate, forKey: "expirationDate")
    }
}
