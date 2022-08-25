// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Filter for a User Picker (single) custom field.
public struct UserFilter: Codable {
    /// Whether the filter is enabled.
    public var isEnabled: Bool
    /// User groups autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 groups can be provided.
    public var groups: [String]?
    /// Roles that autocomplete suggestion users must belong to. If not provided, the default values are used. A maximum of 10 roles can be provided.
    public var roleIDs: [Int64]?

    public init(isEnabled: Bool, groups: [String]? = nil, roleIDs: [Int64]? = nil) {
        self.isEnabled = isEnabled
        self.groups = groups
        self.roleIDs = roleIDs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
        self.groups = try values.decodeIfPresent([String].self, forKey: "groups")
        self.roleIDs = try values.decodeIfPresent([Int64].self, forKey: "roleIds")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isEnabled, forKey: "enabled")
        try values.encodeIfPresent(groups, forKey: "groups")
        try values.encodeIfPresent(roleIDs, forKey: "roleIds")
    }
}
