// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of any errors encountered while updating workflow transition rules for a workflow.
public struct WorkflowTransitionRulesUpdateErrorDetails: Codable {
    /// Properties that identify a workflow.
    public var workflowID: WorkflowID
    /// A list of transition rule update errors, indexed by the transition rule ID. Any transition rule that appears here wasn't updated.
    public var ruleUpdateErrors: [String: [String]]
    /// The list of errors that specify why the workflow update failed. The workflow was not updated if the list contains any entries.
    public var updateErrors: [String]

    public init(workflowID: WorkflowID, ruleUpdateErrors: [String: [String]], updateErrors: [String]) {
        self.workflowID = workflowID
        self.ruleUpdateErrors = ruleUpdateErrors
        self.updateErrors = updateErrors
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.workflowID = try values.decode(WorkflowID.self, forKey: "workflowId")
        self.ruleUpdateErrors = try values.decode([String: [String]].self, forKey: "ruleUpdateErrors")
        self.updateErrors = try values.decode([String].self, forKey: "updateErrors")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(workflowID, forKey: "workflowId")
        try values.encode(ruleUpdateErrors, forKey: "ruleUpdateErrors")
        try values.encode(updateErrors, forKey: "updateErrors")
    }
}
