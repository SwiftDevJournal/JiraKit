// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a dashboard.
public struct DashboardDetails: Codable {
    /// The name of the dashboard.
    public var name: String
    /// The description of the dashboard.
    public var description: String?
    /// The share permissions for the dashboard.
    public var sharePermissions: [SharePermission]
    /// The edit permissions for the dashboard.
    public var editPermissions: [SharePermission]

    public init(name: String, description: String? = nil, sharePermissions: [SharePermission], editPermissions: [SharePermission]) {
        self.name = name
        self.description = description
        self.sharePermissions = sharePermissions
        self.editPermissions = editPermissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.sharePermissions = try values.decode([SharePermission].self, forKey: "sharePermissions")
        self.editPermissions = try values.decode([SharePermission].self, forKey: "editPermissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(sharePermissions, forKey: "sharePermissions")
        try values.encode(editPermissions, forKey: "editPermissions")
    }
}
