// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The default text for a Forge string custom field.
public struct CustomFieldContextDefaultValueForgeStringField: Codable {
    /// The default text. The maximum length is 254 characters.
    public var text: String?

    public init(text: String? = nil) {
        self.text = text
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.text = try values.decodeIfPresent(String.self, forKey: "text")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(text, forKey: "text")
    }
}
