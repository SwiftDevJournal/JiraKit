// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of project permissions and the projects and issues those permissions grant access to.
public struct BulkProjectPermissionGrants: Codable {
    /// A project permission,
    public var permission: String
    /// IDs of the issues the user has the permission for.
    public var issues: [Int64]
    /// IDs of the projects the user has the permission for.
    public var projects: [Int64]

    public init(permission: String, issues: [Int64], projects: [Int64]) {
        self.permission = permission
        self.issues = issues
        self.projects = projects
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.permission = try values.decode(String.self, forKey: "permission")
        self.issues = try values.decode([Int64].self, forKey: "issues")
        self.projects = try values.decode([Int64].self, forKey: "projects")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(permission, forKey: "permission")
        try values.encode(issues, forKey: "issues")
        try values.encode(projects, forKey: "projects")
    }
}
