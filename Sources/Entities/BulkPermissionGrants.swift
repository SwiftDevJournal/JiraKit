// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of global and project permissions granted to the user.
public struct BulkPermissionGrants: Codable {
    /// List of project permissions and the projects and issues those permissions provide access to.
    public var projectPermissions: [BulkProjectPermissionGrants]
    /// List of permissions granted to the user.
    public var globalPermissions: [String]

    public init(projectPermissions: [BulkProjectPermissionGrants], globalPermissions: [String]) {
        self.projectPermissions = projectPermissions
        self.globalPermissions = globalPermissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.projectPermissions = try values.decode([BulkProjectPermissionGrants].self, forKey: "projectPermissions")
        self.globalPermissions = try values.decode([String].self, forKey: "globalPermissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(projectPermissions, forKey: "projectPermissions")
        try values.encode(globalPermissions, forKey: "globalPermissions")
    }
}