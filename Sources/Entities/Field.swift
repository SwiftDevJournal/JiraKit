// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a field.
public struct Field: Codable {
    /// The ID of the field.
    public var id: String
    /// The name of the field.
    public var name: String
    /// The schema of a field.
    public var schema: JSONTypeBean
    /// The description of the field.
    public var description: String?
    /// The key of the field.
    public var key: String?
    /// Whether the field is locked.
    public var isLocked: Bool?
    /// Whether the field is shown on screen or not.
    public var isUnscreenable: Bool?
    /// The searcher key of the field. Returned for custom fields.
    public var searcherKey: String?
    /// Number of screens where the field is used.
    public var screensCount: Int64?
    /// Number of contexts where the field is used.
    public var contextsCount: Int64?
    /// Information about the most recent use of a field.
    public var lastUsed: FieldLastUsed?

    public init(id: String, name: String, schema: JSONTypeBean, description: String? = nil, key: String? = nil, isLocked: Bool? = nil, isUnscreenable: Bool? = nil, searcherKey: String? = nil, screensCount: Int64? = nil, contextsCount: Int64? = nil, lastUsed: FieldLastUsed? = nil) {
        self.id = id
        self.name = name
        self.schema = schema
        self.description = description
        self.key = key
        self.isLocked = isLocked
        self.isUnscreenable = isUnscreenable
        self.searcherKey = searcherKey
        self.screensCount = screensCount
        self.contextsCount = contextsCount
        self.lastUsed = lastUsed
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.schema = try values.decode(JSONTypeBean.self, forKey: "schema")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
        self.isLocked = try values.decodeIfPresent(Bool.self, forKey: "isLocked")
        self.isUnscreenable = try values.decodeIfPresent(Bool.self, forKey: "isUnscreenable")
        self.searcherKey = try values.decodeIfPresent(String.self, forKey: "searcherKey")
        self.screensCount = try values.decodeIfPresent(Int64.self, forKey: "screensCount")
        self.contextsCount = try values.decodeIfPresent(Int64.self, forKey: "contextsCount")
        self.lastUsed = try values.decodeIfPresent(FieldLastUsed.self, forKey: "lastUsed")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encode(schema, forKey: "schema")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(key, forKey: "key")
        try values.encodeIfPresent(isLocked, forKey: "isLocked")
        try values.encodeIfPresent(isUnscreenable, forKey: "isUnscreenable")
        try values.encodeIfPresent(searcherKey, forKey: "searcherKey")
        try values.encodeIfPresent(screensCount, forKey: "screensCount")
        try values.encodeIfPresent(contextsCount, forKey: "contextsCount")
        try values.encodeIfPresent(lastUsed, forKey: "lastUsed")
    }
}
