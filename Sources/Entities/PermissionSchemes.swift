// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// List of all permission schemes.
public struct PermissionSchemes: Codable {
    /// Permission schemes list.
    public var permissionSchemes: [PermissionScheme]?

    public init(permissionSchemes: [PermissionScheme]? = nil) {
        self.permissionSchemes = permissionSchemes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.permissionSchemes = try values.decodeIfPresent([PermissionScheme].self, forKey: "permissionSchemes")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(permissionSchemes, forKey: "permissionSchemes")
    }
}
