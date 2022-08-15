// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a workflow.
public struct DeprecatedWorkflow: Codable {
    /// The name of the workflow.
    public var name: String?
    /// The description of the workflow.
    public var description: String?
    /// The datetime the workflow was last modified.
    public var lastModifiedDate: String?
    /// This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
    public var lastModifiedUser: String?
    /// The account ID of the user that last modified the workflow.
    public var lastModifiedUserAccountID: String?
    /// The number of steps included in the workflow.
    public var steps: Int?
    /// The scope where this workflow applies
    public var scope: Scope?
    public var isDefault: Bool?

    public init(name: String? = nil, description: String? = nil, lastModifiedDate: String? = nil, lastModifiedUser: String? = nil, lastModifiedUserAccountID: String? = nil, steps: Int? = nil, scope: Scope? = nil, isDefault: Bool? = nil) {
        self.name = name
        self.description = description
        self.lastModifiedDate = lastModifiedDate
        self.lastModifiedUser = lastModifiedUser
        self.lastModifiedUserAccountID = lastModifiedUserAccountID
        self.steps = steps
        self.scope = scope
        self.isDefault = isDefault
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.lastModifiedDate = try values.decodeIfPresent(String.self, forKey: "lastModifiedDate")
        self.lastModifiedUser = try values.decodeIfPresent(String.self, forKey: "lastModifiedUser")
        self.lastModifiedUserAccountID = try values.decodeIfPresent(String.self, forKey: "lastModifiedUserAccountId")
        self.steps = try values.decodeIfPresent(Int.self, forKey: "steps")
        self.scope = try values.decodeIfPresent(Scope.self, forKey: "scope")
        self.isDefault = try values.decodeIfPresent(Bool.self, forKey: "default")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(lastModifiedDate, forKey: "lastModifiedDate")
        try values.encodeIfPresent(lastModifiedUser, forKey: "lastModifiedUser")
        try values.encodeIfPresent(lastModifiedUserAccountID, forKey: "lastModifiedUserAccountId")
        try values.encodeIfPresent(steps, forKey: "steps")
        try values.encodeIfPresent(scope, forKey: "scope")
        try values.encodeIfPresent(isDefault, forKey: "default")
    }
}