// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a project component.
public struct ProjectComponent: Codable {
    /// The URL of the component.
    public var this: URL?
    /// The unique identifier for the component.
    public var id: String?
    /// The unique name for the component in the project. Required when creating a component. Optional when updating a component. The maximum length is 255 characters.
    public var name: String?
    /// The description for the component. Optional when creating or updating a component.
    public var description: String?
    /// The user details for the component's lead user.
    public var lead: User?
    /// This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
    public var leadUserName: String?
    /// The accountId of the component's lead user. The accountId uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
    public var leadAccountID: String?
    /// The nominal user type used to determine the assignee for issues created with this component. See `realAssigneeType` for details on how the type of the user, and hence the user, assigned to issues is determined. Can take the following values:
    /// 
    ///  *  `PROJECT_LEAD` the assignee to any issues created with this component is nominally the lead for the project the component is in.
    ///  *  `COMPONENT_LEAD` the assignee to any issues created with this component is nominally the lead for the component.
    ///  *  `UNASSIGNED` an assignee is not set for issues created with this component.
    ///  *  `PROJECT_DEFAULT` the assignee to any issues created with this component is nominally the default assignee for the project that the component is in.
    /// 
    /// Default value: `PROJECT_DEFAULT`.  
    /// Optional when creating or updating a component.
    public var assigneeType: AssigneeType?
    /// The details of the user associated with `assigneeType`, if any. See `realAssignee` for details of the user assigned to issues created with this component.
    public var assignee: User?
    /// The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the `assigneeType`. For example, `assigneeType` is set to `COMPONENT_LEAD` but no component lead is set. This property is set to one of the following values:
    /// 
    ///  *  `PROJECT_LEAD` when `assigneeType` is `PROJECT_LEAD` and the project lead has permission to be assigned issues in the project that the component is in.
    ///  *  `COMPONENT_LEAD` when `assignee`Type is `COMPONENT_LEAD` and the component lead has permission to be assigned issues in the project that the component is in.
    ///  *  `UNASSIGNED` when `assigneeType` is `UNASSIGNED` and Jira is configured to allow unassigned issues.
    ///  *  `PROJECT_DEFAULT` when none of the preceding cases are true.
    public var realAssigneeType: RealAssigneeType?
    /// The user assigned to issues created with this component, when `assigneeType` does not identify a valid assignee.
    public var realAssignee: User?
    /// Whether a user is associated with `assigneeType`. For example, if the `assigneeType` is set to `COMPONENT_LEAD` but the component lead is not set, then `false` is returned.
    public var isAssigneeTypeValid: Bool?
    /// The key of the project the component is assigned to. Required when creating a component. Can't be updated.
    public var project: String?
    /// The ID of the project the component is assigned to.
    public var projectID: Int?

    /// The nominal user type used to determine the assignee for issues created with this component. See `realAssigneeType` for details on how the type of the user, and hence the user, assigned to issues is determined. Can take the following values:
    /// 
    ///  *  `PROJECT_LEAD` the assignee to any issues created with this component is nominally the lead for the project the component is in.
    ///  *  `COMPONENT_LEAD` the assignee to any issues created with this component is nominally the lead for the component.
    ///  *  `UNASSIGNED` an assignee is not set for issues created with this component.
    ///  *  `PROJECT_DEFAULT` the assignee to any issues created with this component is nominally the default assignee for the project that the component is in.
    /// 
    /// Default value: `PROJECT_DEFAULT`.  
    /// Optional when creating or updating a component.
    public enum AssigneeType: String, Codable, CaseIterable {
        case projectDefault = "PROJECT_DEFAULT"
        case componentLead = "COMPONENT_LEAD"
        case projectLead = "PROJECT_LEAD"
        case unassigned = "UNASSIGNED"
    }

    /// The type of the assignee that is assigned to issues created with this component, when an assignee cannot be set from the `assigneeType`. For example, `assigneeType` is set to `COMPONENT_LEAD` but no component lead is set. This property is set to one of the following values:
    /// 
    ///  *  `PROJECT_LEAD` when `assigneeType` is `PROJECT_LEAD` and the project lead has permission to be assigned issues in the project that the component is in.
    ///  *  `COMPONENT_LEAD` when `assignee`Type is `COMPONENT_LEAD` and the component lead has permission to be assigned issues in the project that the component is in.
    ///  *  `UNASSIGNED` when `assigneeType` is `UNASSIGNED` and Jira is configured to allow unassigned issues.
    ///  *  `PROJECT_DEFAULT` when none of the preceding cases are true.
    public enum RealAssigneeType: String, Codable, CaseIterable {
        case projectDefault = "PROJECT_DEFAULT"
        case componentLead = "COMPONENT_LEAD"
        case projectLead = "PROJECT_LEAD"
        case unassigned = "UNASSIGNED"
    }

    public init(this: URL? = nil, id: String? = nil, name: String? = nil, description: String? = nil, lead: User? = nil, leadUserName: String? = nil, leadAccountID: String? = nil, assigneeType: AssigneeType? = nil, assignee: User? = nil, realAssigneeType: RealAssigneeType? = nil, realAssignee: User? = nil, isAssigneeTypeValid: Bool? = nil, project: String? = nil, projectID: Int? = nil) {
        self.this = this
        self.id = id
        self.name = name
        self.description = description
        self.lead = lead
        self.leadUserName = leadUserName
        self.leadAccountID = leadAccountID
        self.assigneeType = assigneeType
        self.assignee = assignee
        self.realAssigneeType = realAssigneeType
        self.realAssignee = realAssignee
        self.isAssigneeTypeValid = isAssigneeTypeValid
        self.project = project
        self.projectID = projectID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.lead = try values.decodeIfPresent(User.self, forKey: "lead")
        self.leadUserName = try values.decodeIfPresent(String.self, forKey: "leadUserName")
        self.leadAccountID = try values.decodeIfPresent(String.self, forKey: "leadAccountId")
        self.assigneeType = try values.decodeIfPresent(AssigneeType.self, forKey: "assigneeType")
        self.assignee = try values.decodeIfPresent(User.self, forKey: "assignee")
        self.realAssigneeType = try values.decodeIfPresent(RealAssigneeType.self, forKey: "realAssigneeType")
        self.realAssignee = try values.decodeIfPresent(User.self, forKey: "realAssignee")
        self.isAssigneeTypeValid = try values.decodeIfPresent(Bool.self, forKey: "isAssigneeTypeValid")
        self.project = try values.decodeIfPresent(String.self, forKey: "project")
        self.projectID = try values.decodeIfPresent(Int.self, forKey: "projectId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(lead, forKey: "lead")
        try values.encodeIfPresent(leadUserName, forKey: "leadUserName")
        try values.encodeIfPresent(leadAccountID, forKey: "leadAccountId")
        try values.encodeIfPresent(assigneeType, forKey: "assigneeType")
        try values.encodeIfPresent(assignee, forKey: "assignee")
        try values.encodeIfPresent(realAssigneeType, forKey: "realAssigneeType")
        try values.encodeIfPresent(realAssignee, forKey: "realAssignee")
        try values.encodeIfPresent(isAssigneeTypeValid, forKey: "isAssigneeTypeValid")
        try values.encodeIfPresent(project, forKey: "project")
        try values.encodeIfPresent(projectID, forKey: "projectId")
    }
}
