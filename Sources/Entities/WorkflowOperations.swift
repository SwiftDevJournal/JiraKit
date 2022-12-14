// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Operations allowed on a workflow
public struct WorkflowOperations: Codable {
    /// Whether the workflow can be updated.
    public var canEdit: Bool
    /// Whether the workflow can be deleted.
    public var canDelete: Bool

    public init(canEdit: Bool, canDelete: Bool) {
        self.canEdit = canEdit
        self.canDelete = canDelete
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.canEdit = try values.decode(Bool.self, forKey: "canEdit")
        self.canDelete = try values.decode(Bool.self, forKey: "canDelete")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(canEdit, forKey: "canEdit")
        try values.encode(canDelete, forKey: "canDelete")
    }
}
