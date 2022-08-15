// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about permissions.
public struct Permissions: Codable {
    /// List of permissions.
    public var permissions: [String: UserPermission]?

    public init(permissions: [String: UserPermission]? = nil) {
        self.permissions = permissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.permissions = try values.decodeIfPresent([String: UserPermission].self, forKey: "permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(permissions, forKey: "permissions")
    }
}
