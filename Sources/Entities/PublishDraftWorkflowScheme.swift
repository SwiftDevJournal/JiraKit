// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about the status mappings for publishing a draft workflow scheme.
public struct PublishDraftWorkflowScheme: Codable {
    /// Mappings of statuses to new statuses for issue types.
    public var statusMappings: [StatusMapping]?

    public init(statusMappings: [StatusMapping]? = nil) {
        self.statusMappings = statusMappings
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.statusMappings = try values.decodeIfPresent([StatusMapping].self, forKey: "statusMappings")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(statusMappings, forKey: "statusMappings")
    }
}