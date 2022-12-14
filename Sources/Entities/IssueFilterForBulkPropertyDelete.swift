// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Bulk operation filter details.
public struct IssueFilterForBulkPropertyDelete: Codable {
    /// List of issues to perform the bulk delete operation on.
    public var entityIDs: [Int64]?
    /// The value of properties to perform the bulk operation on.
    public var currentValue: AnyJSON?

    public init(entityIDs: [Int64]? = nil, currentValue: AnyJSON? = nil) {
        self.entityIDs = entityIDs
        self.currentValue = currentValue
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.entityIDs = try values.decodeIfPresent([Int64].self, forKey: "entityIds")
        self.currentValue = try values.decodeIfPresent(AnyJSON.self, forKey: "currentValue")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(entityIDs, forKey: "entityIds")
        try values.encodeIfPresent(currentValue, forKey: "currentValue")
    }
}
