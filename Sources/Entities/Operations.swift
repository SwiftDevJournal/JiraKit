// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of the operations that can be performed on the issue.
public struct Operations: Codable {
    /// Details of the link groups defining issue operations.
    public var linkGroups: [LinkGroup]?

    public init(linkGroups: [LinkGroup]? = nil) {
        self.linkGroups = linkGroups
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.linkGroups = try values.decodeIfPresent([LinkGroup].self, forKey: "linkGroups")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(linkGroups, forKey: "linkGroups")
    }
}
