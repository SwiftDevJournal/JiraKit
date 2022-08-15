// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a custom field option to create.
public struct CustomFieldOptionCreate: Codable {
    /// The value of the custom field option.
    public var value: String
    /// For cascading options, the ID of the custom field object containing the cascading option.
    public var optionID: String?
    /// Whether the option is disabled.
    public var isDisabled: Bool?

    public init(value: String, optionID: String? = nil, isDisabled: Bool? = nil) {
        self.value = value
        self.optionID = optionID
        self.isDisabled = isDisabled
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.value = try values.decode(String.self, forKey: "value")
        self.optionID = try values.decodeIfPresent(String.self, forKey: "optionId")
        self.isDisabled = try values.decodeIfPresent(Bool.self, forKey: "disabled")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(value, forKey: "value")
        try values.encodeIfPresent(optionID, forKey: "optionId")
        try values.encodeIfPresent(isDisabled, forKey: "disabled")
    }
}