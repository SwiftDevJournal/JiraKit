// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of an application property.
public struct ApplicationProperty: Codable {
    /// The ID of the application property. The ID and key are the same.
    public var id: String?
    /// The key of the application property. The ID and key are the same.
    public var key: String?
    /// The new value.
    public var value: String?
    /// The name of the application property.
    public var name: String?
    /// The description of the application property.
    public var desc: String?
    /// The data type of the application property.
    public var type: String?
    /// The default value of the application property.
    public var defaultValue: String?
    public var example: String?
    /// The allowed values, if applicable.
    public var allowedValues: [String]?

    public init(id: String? = nil, key: String? = nil, value: String? = nil, name: String? = nil, desc: String? = nil, type: String? = nil, defaultValue: String? = nil, example: String? = nil, allowedValues: [String]? = nil) {
        self.id = id
        self.key = key
        self.value = value
        self.name = name
        self.desc = desc
        self.type = type
        self.defaultValue = defaultValue
        self.example = example
        self.allowedValues = allowedValues
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.value = try values.decodeIfPresent(String.self, forKey: "value")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.desc = try values.decodeIfPresent(String.self, forKey: "desc")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.defaultValue = try values.decodeIfPresent(String.self, forKey: "defaultValue")
        self.example = try values.decodeIfPresent(String.self, forKey: "example")
        self.allowedValues = try values.decodeIfPresent([String].self, forKey: "allowedValues")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(value, forKey: "value")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(desc, forKey: "desc")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encodeIfPresent(defaultValue, forKey: "defaultValue")
        try values.encodeIfPresent(example, forKey: "example")
        try values.encodeIfPresent(allowedValues, forKey: "allowedValues")
    }
}