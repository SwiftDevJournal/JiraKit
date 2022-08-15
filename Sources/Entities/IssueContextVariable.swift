// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// An [issue](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#issue) specified by ID or key. All the fields of the issue object are available in the Jira expression.
public struct IssueContextVariable: Codable {
    /// Type of custom context variable.
    public var type: String
    /// The issue ID.
    public var id: Int?
    /// The issue key.
    public var key: String?

    public init(type: String, id: Int? = nil, key: String? = nil) {
        self.type = type
        self.id = id
        self.key = key
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(String.self, forKey: "type")
        self.id = try values.decodeIfPresent(Int.self, forKey: "id")
        self.key = try values.decodeIfPresent(String.self, forKey: "key")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(key, forKey: "key")
    }
}
