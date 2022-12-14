// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The ID of an issue type scheme.
public struct IssueTypeSchemeID: Codable {
    /// The ID of the issue type scheme.
    public var issueTypeSchemeID: String

    public init(issueTypeSchemeID: String) {
        self.issueTypeSchemeID = issueTypeSchemeID
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.issueTypeSchemeID = try values.decode(String.self, forKey: "issueTypeSchemeId")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(issueTypeSchemeID, forKey: "issueTypeSchemeId")
    }
}
