// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The classic workflow identifiers.
public struct WorkflowIDs: Codable {
    /// The name of the workflow.
    public var name: String
    /// The entity ID of the workflow.
    public var entityID: String?

    public init(name: String, entityID: String? = nil) {
        self.name = name
        self.entityID = entityID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decode(String.self, forKey: "name")
        self.entityID = try values.decodeIfPresent(String.self, forKey: "entityId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(entityID, forKey: "entityId")
    }
}
