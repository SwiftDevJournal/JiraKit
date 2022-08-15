// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The default value for a Date custom field.
public struct CustomFieldContextDefaultValueDate: Codable {
    /// The default date in ISO format. Ignored if `useCurrent` is true.
    public var date: String?
    /// Whether to use the current date.
    public var useCurrent: Bool
    public var type: String

    public init(date: String? = nil, useCurrent: Bool? = nil, type: String) {
        self.date = date
        self.useCurrent = useCurrent ?? false
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.date = try values.decodeIfPresent(String.self, forKey: "date")
        self.useCurrent = try values.decodeIfPresent(Bool.self, forKey: "useCurrent") ?? false
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(date, forKey: "date")
        try values.encodeIfPresent(useCurrent, forKey: "useCurrent")
        try values.encode(type, forKey: "type")
    }
}