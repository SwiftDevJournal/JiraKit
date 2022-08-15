// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The list of statuses that will be updated.
public struct StatusUpdateRequest: Codable {
    /// The list of statuses that will be updated.
    public var statuses: [StatusUpdate]?

    public init(statuses: [StatusUpdate]? = nil) {
        self.statuses = statuses
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.statuses = try values.decodeIfPresent([StatusUpdate].self, forKey: "statuses")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(statuses, forKey: "statuses")
    }
}