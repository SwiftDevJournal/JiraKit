// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a status.
public struct JiraStatus: Codable {
    /// The ID of the status.
    public var id: String?
    /// The name of the status.
    public var name: String?
    /// The category of the status.
    public var statusCategory: StatusCategory?
    /// The scope of the status.
    public var scope: StatusScope?
    /// The description of the status.
    public var description: String?
    /// Projects and issue types where the status is used. Only available if the `usages` expand is requested.
    public var usages: [ProjectIssueTypes]?

    /// The category of the status.
    public enum StatusCategory: String, Codable, CaseIterable {
        case todo = "TODO"
        case inProgress = "IN_PROGRESS"
        case done = "DONE"
    }

    public init(id: String? = nil, name: String? = nil, statusCategory: StatusCategory? = nil, scope: StatusScope? = nil, description: String? = nil, usages: [ProjectIssueTypes]? = nil) {
        self.id = id
        self.name = name
        self.statusCategory = statusCategory
        self.scope = scope
        self.description = description
        self.usages = usages
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.statusCategory = try values.decodeIfPresent(StatusCategory.self, forKey: "statusCategory")
        self.scope = try values.decodeIfPresent(StatusScope.self, forKey: "scope")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.usages = try values.decodeIfPresent([ProjectIssueTypes].self, forKey: "usages")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(statusCategory, forKey: "statusCategory")
        try values.encodeIfPresent(scope, forKey: "scope")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(usages, forKey: "usages")
    }
}