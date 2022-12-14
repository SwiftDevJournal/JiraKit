// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The hierarchy of issue types within a project.
public struct ProjectIssueTypeHierarchy: Codable {
    /// The ID of the project.
    public var projectID: Int64?
    /// Details of an issue type hierarchy level.
    public var hierarchy: [ProjectIssueTypesHierarchyLevel]?

    public init(projectID: Int64? = nil, hierarchy: [ProjectIssueTypesHierarchyLevel]? = nil) {
        self.projectID = projectID
        self.hierarchy = hierarchy
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projectID = try values.decodeIfPresent(Int64.self, forKey: "projectId")
        self.hierarchy = try values.decodeIfPresent([ProjectIssueTypesHierarchyLevel].self, forKey: "hierarchy")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(projectID, forKey: "projectId")
        try values.encodeIfPresent(hierarchy, forKey: "hierarchy")
    }
}
