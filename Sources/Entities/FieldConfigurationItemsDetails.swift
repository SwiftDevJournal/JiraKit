// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of field configuration items.
public struct FieldConfigurationItemsDetails: Codable {
    /// Details of fields in a field configuration.
    public var fieldConfigurationItems: [FieldConfigurationItem]

    public init(fieldConfigurationItems: [FieldConfigurationItem]) {
        self.fieldConfigurationItems = fieldConfigurationItems
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fieldConfigurationItems = try values.decode([FieldConfigurationItem].self, forKey: "fieldConfigurationItems")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(fieldConfigurationItems, forKey: "fieldConfigurationItems")
    }
}
