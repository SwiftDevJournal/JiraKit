// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct LinkIssueRequestJSONBean: Codable {
    /// This object is used as follows:
    /// 
    ///  *  In the [ issueLink](#api-rest-api-3-issueLink-post) resource it defines and reports on the type of link between the issues. Find a list of issue link types with [Get issue link types](#api-rest-api-3-issueLinkType-get).
    ///  *  In the [ issueLinkType](#api-rest-api-3-issueLinkType-post) resource it defines and reports on issue link types.
    public var type: IssueLinkType
    /// The ID or key of a linked issue.
    public var inwardIssue: LinkedIssue
    /// The ID or key of a linked issue.
    public var outwardIssue: LinkedIssue
    /// A comment.
    public var comment: Comment?

    public init(type: IssueLinkType, inwardIssue: LinkedIssue, outwardIssue: LinkedIssue, comment: Comment? = nil) {
        self.type = type
        self.inwardIssue = inwardIssue
        self.outwardIssue = outwardIssue
        self.comment = comment
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(IssueLinkType.self, forKey: "type")
        self.inwardIssue = try values.decode(LinkedIssue.self, forKey: "inwardIssue")
        self.outwardIssue = try values.decode(LinkedIssue.self, forKey: "outwardIssue")
        self.comment = try values.decodeIfPresent(Comment.self, forKey: "comment")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(inwardIssue, forKey: "inwardIssue")
        try values.encode(outwardIssue, forKey: "outwardIssue")
        try values.encodeIfPresent(comment, forKey: "comment")
    }
}
