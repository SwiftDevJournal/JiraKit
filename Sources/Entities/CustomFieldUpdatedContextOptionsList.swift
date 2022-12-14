// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of custom field options for a context.
public struct CustomFieldUpdatedContextOptionsList: Codable {
    /// The updated custom field options.
    public var options: [CustomFieldOptionUpdate]?

    public init(options: [CustomFieldOptionUpdate]? = nil) {
        self.options = options
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.options = try values.decodeIfPresent([CustomFieldOptionUpdate].self, forKey: "options")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(options, forKey: "options")
    }
}
