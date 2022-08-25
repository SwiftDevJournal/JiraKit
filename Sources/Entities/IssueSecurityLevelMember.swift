// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Issue security level member.
public struct IssueSecurityLevelMember: Codable {
    /// The ID of the issue security level member.
    public var id: Int64
    /// The ID of the issue security level.
    public var issueSecurityLevelID: Int64
    /// The user or group being granted the permission. It consists of a `type` and a type-dependent `parameter`. See [Holder object](../api-group-permission-schemes/#holder-object) in *Get all permission schemes* for more information.
    public var holder: PermissionHolder

    public init(id: Int64, issueSecurityLevelID: Int64, holder: PermissionHolder) {
        self.id = id
        self.issueSecurityLevelID = issueSecurityLevelID
        self.holder = holder
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int64.self, forKey: "id")
        self.issueSecurityLevelID = try values.decode(Int64.self, forKey: "issueSecurityLevelId")
        self.holder = try values.decode(PermissionHolder.self, forKey: "holder")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(issueSecurityLevelID, forKey: "issueSecurityLevelId")
        try values.encode(holder, forKey: "holder")
    }
}
