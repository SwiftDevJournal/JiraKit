// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of permission grants.
public struct PermissionGrants: Codable {
    /// Permission grants list.
    public var permissions: [PermissionGrant]?
    /// Expand options that include additional permission grant details in the response.
    public var expand: String?

    public init(permissions: [PermissionGrant]? = nil, expand: String? = nil) {
        self.permissions = permissions
        self.expand = expand
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.permissions = try values.decodeIfPresent([PermissionGrant].self, forKey: "permissions")
        self.expand = try values.decodeIfPresent(String.self, forKey: "expand")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(permissions, forKey: "permissions")
        try values.encodeIfPresent(expand, forKey: "expand")
    }
}
