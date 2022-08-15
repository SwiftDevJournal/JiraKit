// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Count of a version's unresolved issues.
public struct VersionUnresolvedIssuesCount: Codable {
    /// The URL of these count details.
    public var this: URL?
    /// Count of unresolved issues.
    public var issuesUnresolvedCount: Int?
    /// Count of issues.
    public var issuesCount: Int?

    public init(this: URL? = nil, issuesUnresolvedCount: Int? = nil, issuesCount: Int? = nil) {
        self.this = this
        self.issuesUnresolvedCount = issuesUnresolvedCount
        self.issuesCount = issuesCount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.issuesUnresolvedCount = try values.decodeIfPresent(Int.self, forKey: "issuesUnresolvedCount")
        self.issuesCount = try values.decodeIfPresent(Int.self, forKey: "issuesCount")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(this, forKey: "self")
        try values.encodeIfPresent(issuesUnresolvedCount, forKey: "issuesUnresolvedCount")
        try values.encodeIfPresent(issuesCount, forKey: "issuesCount")
    }
}