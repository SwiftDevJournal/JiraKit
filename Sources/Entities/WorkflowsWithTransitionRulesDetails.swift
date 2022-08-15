// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of workflows and their transition rules to delete.
public struct WorkflowsWithTransitionRulesDetails: Codable {
    /// The list of workflows with transition rules to delete.
    public var workflows: [WorkflowTransitionRulesDetails]

    public init(workflows: [WorkflowTransitionRulesDetails]) {
        self.workflows = workflows
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.workflows = try values.decode([WorkflowTransitionRulesDetails].self, forKey: "workflows")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(workflows, forKey: "workflows")
    }
}