// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The project and issue type mappings.
public struct ProjectIssueTypeMappings: Codable {
    /// The project and issue type mappings.
    public var mappings: [ProjectIssueTypeMapping]

    public init(mappings: [ProjectIssueTypeMapping]) {
        self.mappings = mappings
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.mappings = try values.decode([ProjectIssueTypeMapping].self, forKey: "mappings")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(mappings, forKey: "mappings")
    }
}
