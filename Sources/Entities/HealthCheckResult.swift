// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Jira instance health check results. Deprecated and no longer returned.
public struct HealthCheckResult: Codable {
    /// The name of the Jira health check item.
    public var name: String?
    /// The description of the Jira health check item.
    public var description: String?
    /// Whether the Jira health check item passed or failed.
    public var isPassed: Bool?

    public init(name: String? = nil, description: String? = nil, isPassed: Bool? = nil) {
        self.name = name
        self.description = description
        self.isPassed = isPassed
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.isPassed = try values.decodeIfPresent(Bool.self, forKey: "passed")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(isPassed, forKey: "passed")
    }
}
