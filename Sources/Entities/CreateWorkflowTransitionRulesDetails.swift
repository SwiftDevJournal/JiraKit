// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The details of a workflow transition rules.
public struct CreateWorkflowTransitionRulesDetails: Codable {
    /// The workflow conditions.
    public var conditions: CreateWorkflowCondition?
    /// The workflow validators.
    /// 
    /// **Note:** The default permission validator is always added to the *initial* transition, as in:
    /// 
    ///     "validators": [
    ///         {
    ///             "type": "PermissionValidator",
    ///             "configuration": {
    ///                 "permissionKey": "CREATE_ISSUES"
    ///             }
    ///         }
    ///     ]
    public var validators: [CreateWorkflowTransitionRule]?
    /// The workflow post functions.
    /// 
    /// **Note:** The default post functions are always added to the *initial* transition, as in:
    /// 
    ///     "postFunctions": [
    ///         {
    ///             "type": "IssueCreateFunction"
    ///         },
    ///         {
    ///             "type": "IssueReindexFunction"
    ///         },
    ///         {
    ///             "type": "FireIssueEventFunction",
    ///             "configuration": {
    ///                 "event": {
    ///                     "id": "1",
    ///                     "name": "issue_created"
    ///                 }
    ///             }
    ///         }
    ///     ]
    /// 
    /// **Note:** The default post functions are always added to the *global* and *directed* transitions, as in:
    /// 
    ///     "postFunctions": [
    ///         {
    ///             "type": "UpdateIssueStatusFunction"
    ///         },
    ///         {
    ///             "type": "CreateCommentFunction"
    ///         },
    ///         {
    ///             "type": "GenerateChangeHistoryFunction"
    ///         },
    ///         {
    ///             "type": "IssueReindexFunction"
    ///         },
    ///         {
    ///             "type": "FireIssueEventFunction",
    ///             "configuration": {
    ///                 "event": {
    ///                     "id": "13",
    ///                     "name": "issue_generic"
    ///                 }
    ///             }
    ///         }
    ///     ]
    public var postFunctions: [CreateWorkflowTransitionRule]?

    public init(conditions: CreateWorkflowCondition? = nil, validators: [CreateWorkflowTransitionRule]? = nil, postFunctions: [CreateWorkflowTransitionRule]? = nil) {
        self.conditions = conditions
        self.validators = validators
        self.postFunctions = postFunctions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.conditions = try values.decodeIfPresent(CreateWorkflowCondition.self, forKey: "conditions")
        self.validators = try values.decodeIfPresent([CreateWorkflowTransitionRule].self, forKey: "validators")
        self.postFunctions = try values.decodeIfPresent([CreateWorkflowTransitionRule].self, forKey: "postFunctions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(conditions, forKey: "conditions")
        try values.encodeIfPresent(validators, forKey: "validators")
        try values.encodeIfPresent(postFunctions, forKey: "postFunctions")
    }
}