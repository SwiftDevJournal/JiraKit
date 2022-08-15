// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SharePermissionInputBean: Codable {
    /// The type of the share permission.Specify the type as follows:
    /// 
    ///  *  `user` Share with a user.
    ///  *  `group` Share with a group. Specify `groupname` as well.
    ///  *  `project` Share with a project. Specify `projectId` as well.
    ///  *  `projectRole` Share with a project role in a project. Specify `projectId` and `projectRoleId` as well.
    ///  *  `global` Share globally, including anonymous users. If set, this type overrides all existing share permissions and must be deleted before any non-global share permissions is set.
    ///  *  `authenticated` Share with all logged-in users. This shows as `loggedin` in the response. If set, this type overrides all existing share permissions and must be deleted before any non-global share permissions is set.
    public var type: `Type`
    /// The ID of the project to share the filter with. Set `type` to `project`.
    public var projectID: String?
    /// The name of the group to share the filter with. Set `type` to `group`. Please note that the name of a group is mutable, to reliably identify a group use `groupId`.
    public var groupname: String?
    /// The ID of the project role to share the filter with. Set `type` to `projectRole` and the `projectId` for the project that the role is in.
    public var projectRoleID: String?
    /// The user account ID that the filter is shared with. For a request, specify the `accountId` property for the user.
    public var accountID: String?
    /// The rights for the share permission.
    public var rights: Int?
    /// The ID of the group, which uniquely identifies the group across all Atlassian products.For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. Cannot be provided with `groupname`.
    public var groupID: String?

    /// The type of the share permission.Specify the type as follows:
    /// 
    ///  *  `user` Share with a user.
    ///  *  `group` Share with a group. Specify `groupname` as well.
    ///  *  `project` Share with a project. Specify `projectId` as well.
    ///  *  `projectRole` Share with a project role in a project. Specify `projectId` and `projectRoleId` as well.
    ///  *  `global` Share globally, including anonymous users. If set, this type overrides all existing share permissions and must be deleted before any non-global share permissions is set.
    ///  *  `authenticated` Share with all logged-in users. This shows as `loggedin` in the response. If set, this type overrides all existing share permissions and must be deleted before any non-global share permissions is set.
    public enum `Type`: String, Codable, CaseIterable {
        case user
        case project
        case group
        case projectRole
        case global
        case authenticated
    }

    public init(type: `Type`, projectID: String? = nil, groupname: String? = nil, projectRoleID: String? = nil, accountID: String? = nil, rights: Int? = nil, groupID: String? = nil) {
        self.type = type
        self.projectID = projectID
        self.groupname = groupname
        self.projectRoleID = projectRoleID
        self.accountID = accountID
        self.rights = rights
        self.groupID = groupID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.projectID = try values.decodeIfPresent(String.self, forKey: "projectId")
        self.groupname = try values.decodeIfPresent(String.self, forKey: "groupname")
        self.projectRoleID = try values.decodeIfPresent(String.self, forKey: "projectRoleId")
        self.accountID = try values.decodeIfPresent(String.self, forKey: "accountId")
        self.rights = try values.decodeIfPresent(Int.self, forKey: "rights")
        self.groupID = try values.decodeIfPresent(String.self, forKey: "groupId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(projectID, forKey: "projectId")
        try values.encodeIfPresent(groupname, forKey: "groupname")
        try values.encodeIfPresent(projectRoleID, forKey: "projectRoleId")
        try values.encodeIfPresent(accountID, forKey: "accountId")
        try values.encodeIfPresent(rights, forKey: "rights")
        try values.encodeIfPresent(groupID, forKey: "groupId")
    }
}