// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The sanitized JQL queries for the given account IDs.
public struct SanitizedJqlQueries: Codable {
    /// The list of sanitized JQL queries.
    public var queries: [SanitizedJqlQuery]?

    public init(queries: [SanitizedJqlQuery]? = nil) {
        self.queries = queries
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.queries = try values.decodeIfPresent([SanitizedJqlQuery].self, forKey: "queries")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(queries, forKey: "queries")
    }
}
