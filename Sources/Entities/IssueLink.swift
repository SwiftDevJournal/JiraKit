// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Details of a link between issues.
public struct IssueLink: Codable {
    /// The ID of the issue link.
    public var id: String?
    /// The URL of the issue link.
    public var this: URL?
    /// The type of link between the issues.
    public var type: IssueLinkType
    /// Provides details about the linked issue. If presenting this link in a user interface, use the `inward` field of the issue link type to label the link.
    public var inwardIssue: LinkedIssue
    /// Provides details about the linked issue. If presenting this link in a user interface, use the `outward` field of the issue link type to label the link.
    public var outwardIssue: LinkedIssue

    public init(id: String? = nil, this: URL? = nil, type: IssueLinkType, inwardIssue: LinkedIssue, outwardIssue: LinkedIssue) {
        self.id = id
        self.this = this
        self.type = type
        self.inwardIssue = inwardIssue
        self.outwardIssue = outwardIssue
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.this = try values.decodeIfPresent(URL.self, forKey: "self")
        self.type = try values.decode(IssueLinkType.self, forKey: "type")
        self.inwardIssue = try values.decode(LinkedIssue.self, forKey: "inwardIssue")
        self.outwardIssue = try values.decode(LinkedIssue.self, forKey: "outwardIssue")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(id, forKey: "id")
        try values.encodeIfPresent(this, forKey: "self")
        try values.encode(type, forKey: "type")
        try values.encode(inwardIssue, forKey: "inwardIssue")
        try values.encode(outwardIssue, forKey: "outwardIssue")
    }
}
