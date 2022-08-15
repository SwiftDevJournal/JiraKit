// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a permission scheme.
public struct PermissionScheme: Codable {
    /// The expand options available for the permission scheme.
    public var expand: String?
    /// The ID of the permission scheme.
    public var id: Int?
    /// The URL of the permission scheme.
    public var this: URL?
    /// The name of the permission scheme. Must be unique.
    public var name: String
    /// A description for the permission scheme.
    public var description: String?
    /// The scope of the permission scheme.
    public var scope: Scope?
    /// The permission scheme to create or update. See [About permission schemes and grants](../api-group-permission-schemes/#about-permission-schemes-and-grants) for more information.
    public var permissions: [PermissionGrant]?

    public init(expand: String? = nil, id: Int? = nil, this: URL? = nil, name: String, description: String? = nil, scope: Scope? = nil, permissions: [PermissionGrant]? = nil) {
        self.expand = expand
        self.id = id
        self.this = this
        self.name = name
        self.description = description
        self.scope = scope
        self.permissions = permissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.expand = try values.decodeIfPresent(String.self, forKey: "expand")
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.scope = try values.decodeIfPresent(Scope.self, forKey: "scope")
        self.permissions = try values.decodeIfPresent([PermissionGrant].self, forKey: "permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(expand, forKey: "expand")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(this, forKey: "self")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(scope, forKey: "scope")
        try values.encodeIfPresent(permissions, forKey: "permissions")
    }
}
