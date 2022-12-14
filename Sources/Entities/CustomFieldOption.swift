// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a custom option for a field.
public struct CustomFieldOption: Codable {
    /// The URL of these custom field option details.
    public var this: URL?
    /// The value of the custom field option.
    public var value: String?

    public init(this: URL? = nil, value: String? = nil) {
        self.this = this
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.value = try values.decodeIfPresent(String.self, forKey: "value")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(value, forKey: "value")
    }
}
