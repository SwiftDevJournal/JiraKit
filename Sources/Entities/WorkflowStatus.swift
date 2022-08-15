// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a workflow status.
public struct WorkflowStatus: Codable {
    /// The ID of the issue status.
    public var id: String
    /// The name of the status in the workflow.
    public var name: String
    /// Additional properties that modify the behavior of issues in this status. Supports the properties `jira.issue.editable` and `issueEditable` (deprecated) that indicate whether issues are editable.
    public var properties: [String: AnyJSON]?

    public init(id: String, name: String, properties: [String: AnyJSON]? = nil) {
        self.id = id
        self.name = name
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.properties = try values.decodeIfPresent([String: AnyJSON].self, forKey: "properties")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(properties, forKey: "properties")
    }
}