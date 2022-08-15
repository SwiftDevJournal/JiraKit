// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Properties that identify a workflow.
public struct WorkflowID: Codable {
    /// The name of the workflow.
    public var name: String
    /// Whether the workflow is in the draft state.
    public var isDraft: Bool

    public init(name: String, isDraft: Bool) {
        self.name = name
        self.isDraft = isDraft
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.isDraft = try values.decode(Bool.self, forKey: "draft")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encode(isDraft, forKey: "draft")
    }
}
