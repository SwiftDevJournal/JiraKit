// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// An entity property, for more information see [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/).
public struct EntityProperty: Codable {
    /// The key of the property. Required on create and update.
    public var key: String?
    /// The value of the property. Required on create and update.
    public var value: AnyJSON?

    public init(key: String? = nil, value: AnyJSON? = nil) {
        self.key = key
        self.value = value
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.value = try values.decodeIfPresent(AnyJSON.self, forKey: "value")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(value, forKey: "value")
    }
}