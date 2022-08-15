// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of names changed in the record event.
public struct ChangedValueBean: Codable {
    /// The name of the field changed.
    public var fieldName: String?
    /// The value of the field before the change.
    public var changedFrom: String?
    /// The value of the field after the change.
    public var changedTo: String?

    public init(fieldName: String? = nil, changedFrom: String? = nil, changedTo: String? = nil) {
        self.fieldName = fieldName
        self.changedFrom = changedFrom
        self.changedTo = changedTo
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fieldName = try values.decodeIfPresent(String.self, forKey: "fieldName")
        self.changedFrom = try values.decodeIfPresent(String.self, forKey: "changedFrom")
        self.changedTo = try values.decodeIfPresent(String.self, forKey: "changedTo")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(fieldName, forKey: "fieldName")
        try values.encodeIfPresent(changedFrom, forKey: "changedFrom")
        try values.encodeIfPresent(changedTo, forKey: "changedTo")
    }
}