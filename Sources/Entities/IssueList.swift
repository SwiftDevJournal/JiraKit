// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A list of issue IDs.
public struct IssueList: Codable {
    /// The list of issue IDs.
    public var issueIDs: [String]

    public init(issueIDs: [String]) {
        self.issueIDs = issueIDs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issueIDs = try values.decode([String].self, forKey: "issueIds")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(issueIDs, forKey: "issueIds")
    }
}
