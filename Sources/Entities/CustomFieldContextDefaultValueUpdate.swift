// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Default values to update.
public struct CustomFieldContextDefaultValueUpdate: Codable {
    public var defaultValues: [CustomFieldContextDefaultValue]?

    public init(defaultValues: [CustomFieldContextDefaultValue]? = nil) {
        self.defaultValues = defaultValues
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.defaultValues = try values.decodeIfPresent([CustomFieldContextDefaultValue].self, forKey: "defaultValues")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(defaultValues, forKey: "defaultValues")
    }
}
