// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about a workflow configuration update request.
public struct WorkflowTransitionRulesUpdate: Codable {
    /// The list of workflows with transition rules to update.
    public var workflows: [WorkflowTransitionRules]

    public init(workflows: [WorkflowTransitionRules]) {
        self.workflows = workflows
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.workflows = try values.decode([WorkflowTransitionRules].self, forKey: "workflows")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(workflows, forKey: "workflows")
    }
}
