// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Key fields from the linked issue.
public struct Fields: Codable {
    /// The summary description of the linked issue.
    public var summary: String?
    /// The status of the linked issue.
    public var status: StatusDetails?
    /// The priority of the linked issue.
    public var priority: Priority?
    /// The assignee of the linked issue.
    public var assignee: UserDetails?
    /// The time tracking of the linked issue.
    public var timetracking: TimeTrackingDetails?
    /// Details about an issue type.
    public var issuetype: IssueTypeDetails?
    /// The type of the linked issue.
    public var issueType: IssueTypeDetails?

    public init(summary: String? = nil, status: StatusDetails? = nil, priority: Priority? = nil, assignee: UserDetails? = nil, timetracking: TimeTrackingDetails? = nil, issuetype: IssueTypeDetails? = nil, issueType: IssueTypeDetails? = nil) {
        self.summary = summary
        self.status = status
        self.priority = priority
        self.assignee = assignee
        self.timetracking = timetracking
        self.issuetype = issuetype
        self.issueType = issueType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.summary = try values.decodeIfPresent(String.self, forKey: "summary")
        self.status = try values.decodeIfPresent(StatusDetails.self, forKey: "status")
        self.priority = try values.decodeIfPresent(Priority.self, forKey: "priority")
        self.assignee = try values.decodeIfPresent(UserDetails.self, forKey: "assignee")
        self.timetracking = try values.decodeIfPresent(TimeTrackingDetails.self, forKey: "timetracking")
        self.issuetype = try values.decodeIfPresent(IssueTypeDetails.self, forKey: "issuetype")
        self.issueType = try values.decodeIfPresent(IssueTypeDetails.self, forKey: "issueType")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(summary, forKey: "summary")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(priority, forKey: "priority")
        try values.encodeIfPresent(assignee, forKey: "assignee")
        try values.encodeIfPresent(timetracking, forKey: "timetracking")
        try values.encodeIfPresent(issuetype, forKey: "issuetype")
        try values.encodeIfPresent(issueType, forKey: "issueType")
    }
}
