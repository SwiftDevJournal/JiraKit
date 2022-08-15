// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A container for the watch status of a list of issues.
public struct BulkIssueIsWatching: Codable {
    /// The map of issue ID to boolean watch status.
    public var issuesIsWatching: [String: Bool]?

    public init(issuesIsWatching: [String: Bool]? = nil) {
        self.issuesIsWatching = issuesIsWatching
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issuesIsWatching = try values.decodeIfPresent([String: Bool].self, forKey: "issuesIsWatching")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(issuesIsWatching, forKey: "issuesIsWatching")
    }
}