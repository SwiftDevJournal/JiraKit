// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of webhooks.
public struct WebhookDetails: Codable {
    /// The JQL filter that specifies which issues the webhook is sent for. Only a subset of JQL can be used. The supported elements are:
    /// 
    ///  *  Fields: `issueKey`, `project`, `issuetype`, `status`, `assignee`, `reporter`, `issue.property`, and `cf[id]`. For custom fields (`cf[id]`), only the epic label custom field is supported.".
    ///  *  Operators: `=`, `!=`, `IN`, and `NOT IN`.
    public var jqlFilter: String
    /// A list of field IDs. When the issue changelog contains any of the fields, the webhook `jira:issue_updated` is sent. If this parameter is not present, the app is notified about all field updates.
    public var fieldIDsFilter: [String]?
    /// A list of issue property keys. A change of those issue properties triggers the `issue_property_set` or `issue_property_deleted` webhooks. If this parameter is not present, the app is notified about all issue property updates.
    public var issuePropertyKeysFilter: [String]?
    /// The Jira events that trigger the webhook.
    public var events: [Event]

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

    public init(jqlFilter: String, fieldIDsFilter: [String]? = nil, issuePropertyKeysFilter: [String]? = nil, events: [Event]) {
        self.jqlFilter = jqlFilter
        self.fieldIDsFilter = fieldIDsFilter
        self.issuePropertyKeysFilter = issuePropertyKeysFilter
        self.events = events
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.jqlFilter = try values.decode(String.self, forKey: "jqlFilter")
        self.fieldIDsFilter = try values.decodeIfPresent([String].self, forKey: "fieldIdsFilter")
        self.issuePropertyKeysFilter = try values.decodeIfPresent([String].self, forKey: "issuePropertyKeysFilter")
        self.events = try values.decode([Event].self, forKey: "events")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(jqlFilter, forKey: "jqlFilter")
        try values.encodeIfPresent(fieldIDsFilter, forKey: "fieldIdsFilter")
        try values.encodeIfPresent(issuePropertyKeysFilter, forKey: "issuePropertyKeysFilter")
        try values.encode(events, forKey: "events")
    }
}
