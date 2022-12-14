// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Lists of issues and entity properties. See [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/) for more information.
public struct IssueEntityProperties: Codable {
    /// A list of entity property IDs.
    public var entitiesIDs: [Int64]?
    /// A list of entity property keys and values.
    public var properties: [String: JSONNode]?

    public init(entitiesIDs: [Int64]? = nil, properties: [String: JSONNode]? = nil) {
        self.entitiesIDs = entitiesIDs
        self.properties = properties
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.entitiesIDs = try values.decodeIfPresent([Int64].self, forKey: "entitiesIds")
        self.properties = try values.decodeIfPresent([String: JSONNode].self, forKey: "properties")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(entitiesIDs, forKey: "entitiesIds")
        try values.encodeIfPresent(properties, forKey: "properties")
    }
}
