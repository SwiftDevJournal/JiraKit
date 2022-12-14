// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of the workflow and its transition rules.
public struct WorkflowRulesSearch: Codable {
    /// The workflow ID.
    ///
    /// Example: "a498d711-685d-428d-8c3e-bc03bb450ea7"
    public var workflowEntityID: UUID
    /// The list of workflow rule IDs.
    public var ruleIDs: [UUID]
    /// Use expand to include additional information in the response. This parameter accepts `transition` which, for each rule, returns information about the transition the rule is assigned to.
    ///
    /// Example: "transition"
    public var expand: String?

    public init(workflowEntityID: UUID, ruleIDs: [UUID], expand: String? = nil) {
        self.workflowEntityID = workflowEntityID
        self.ruleIDs = ruleIDs
        self.expand = expand
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.workflowEntityID = try values.decode(UUID.self, forKey: "workflowEntityId")
        self.ruleIDs = try values.decode([UUID].self, forKey: "ruleIds")
        self.expand = try values.decodeIfPresent(String.self, forKey: "expand")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(workflowEntityID, forKey: "workflowEntityId")
        try values.encode(ruleIDs, forKey: "ruleIds")
        try values.encodeIfPresent(expand, forKey: "expand")
    }
}
