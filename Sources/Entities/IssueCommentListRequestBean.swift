// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct IssueCommentListRequestBean: Codable {
    /// The list of comment IDs. A maximum of 1000 IDs can be specified.
    public var ids: [Int64]

    public init(ids: [Int64]) {
        self.ids = ids
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.ids = try values.decode([Int64].self, forKey: "ids")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(ids, forKey: "ids")
    }
}
