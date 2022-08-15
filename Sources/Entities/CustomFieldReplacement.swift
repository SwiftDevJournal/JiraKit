// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details about the replacement for a deleted version.
public struct CustomFieldReplacement: Codable {
    /// The ID of the custom field in which to replace the version number.
    public var customFieldID: Int?
    /// The version number to use as a replacement for the deleted version.
    public var moveTo: Int?

    public init(customFieldID: Int? = nil, moveTo: Int? = nil) {
        self.customFieldID = customFieldID
        self.moveTo = moveTo
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.customFieldID = try values.decodeIfPresent(Int.self, forKey: "customFieldId")
        self.moveTo = try values.decodeIfPresent(Int.self, forKey: "moveTo")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(customFieldID, forKey: "customFieldId")
        try values.encodeIfPresent(moveTo, forKey: "moveTo")
    }
}
