// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ProjectRoleActorsUpdateBean: Codable {
    /// The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs.
    public var id: Int64?
    /// The actors to add to the project role.
    /// 
    /// Add groups using:
    /// 
    ///  *  `atlassian-group-role-actor` and a list of group names.
    ///  *  `atlassian-group-role-actor-id` and a list of group IDs.
    /// 
    /// As a group's name can change, use of `atlassian-group-role-actor-id` is recommended. For example, `"atlassian-group-role-actor-id":["eef79f81-0b89-4fca-a736-4be531a10869","77f6ab39-e755-4570-a6ae-2d7a8df0bcb8"]`.
    /// 
    /// Add users using `atlassian-user-role-actor` and a list of account IDs. For example, `"atlassian-user-role-actor":["12345678-9abc-def1-2345-6789abcdef12", "abcdef12-3456-789a-bcde-f123456789ab"]`.
    public var categorisedActors: [String: [String]]?

    public init(id: Int64? = nil, categorisedActors: [String: [String]]? = nil) {
        self.id = id
        self.categorisedActors = categorisedActors
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(Int64.self, forKey: "id")
        self.categorisedActors = try values.decodeIfPresent([String: [String]].self, forKey: "categorisedActors")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(categorisedActors, forKey: "categorisedActors")
    }
}
