// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of JQL queries to parse.
public struct JqlQueriesToParse: Codable {
    /// A list of queries to parse.
    public var queries: [String]

    public init(queries: [String]) {
        self.queries = queries
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.queries = try values.decode([String].self, forKey: "queries")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(queries, forKey: "queries")
    }
}
