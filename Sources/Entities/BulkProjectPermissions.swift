// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of project permissions and associated issues and projects to look up.
public struct BulkProjectPermissions: Codable {
    /// List of issue IDs.
    public var issues: [Int64]?
    /// List of project IDs.
    public var projects: [Int64]?
    /// List of project permissions.
    public var permissions: [String]

    public init(issues: [Int64]? = nil, projects: [Int64]? = nil, permissions: [String]) {
        self.issues = issues
        self.projects = projects
        self.permissions = permissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issues = try values.decodeIfPresent([Int64].self, forKey: "issues")
        self.projects = try values.decodeIfPresent([Int64].self, forKey: "projects")
        self.permissions = try values.decode([String].self, forKey: "permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(issues, forKey: "issues")
        try values.encodeIfPresent(projects, forKey: "projects")
        try values.encode(permissions, forKey: "permissions")
    }
}
