// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about the default workflow.
public struct DefaultWorkflow: Codable {
    /// The name of the workflow to set as the default workflow.
    public var workflow: String
    /// Whether a draft workflow scheme is created or updated when updating an active workflow scheme. The draft is updated with the new default workflow. Defaults to `false`.
    public var isUpdateDraftIfNeeded: Bool?

    public init(workflow: String, isUpdateDraftIfNeeded: Bool? = nil) {
        self.workflow = workflow
        self.isUpdateDraftIfNeeded = isUpdateDraftIfNeeded
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.workflow = try values.decode(String.self, forKey: "workflow")
        self.isUpdateDraftIfNeeded = try values.decodeIfPresent(Bool.self, forKey: "updateDraftIfNeeded")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(workflow, forKey: "workflow")
        try values.encodeIfPresent(isUpdateDraftIfNeeded, forKey: "updateDraftIfNeeded")
    }
}
