// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of an issue navigator column item.
public struct ColumnItem: Codable {
    /// The issue navigator column label.
    public var label: String?
    /// The issue navigator column value.
    public var value: String?

    public init(label: String? = nil, value: String? = nil) {
        self.label = label
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.label = try values.decodeIfPresent(String.self, forKey: "label")
        self.value = try values.decodeIfPresent(String.self, forKey: "value")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(label, forKey: "label")
        try values.encodeIfPresent(value, forKey: "value")
    }
}
