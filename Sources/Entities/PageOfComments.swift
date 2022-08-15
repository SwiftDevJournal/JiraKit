// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A page of comments.
public struct PageOfComments: Codable {
    /// The index of the first item returned.
    public var startAt: Int?
    /// The maximum number of items that could be returned.
    public var maxResults: Int?
    /// The number of items returned.
    public var total: Int?
    /// The list of comments.
    public var comments: [Comment]?

    public init(startAt: Int? = nil, maxResults: Int? = nil, total: Int? = nil, comments: [Comment]? = nil) {
        self.startAt = startAt
        self.maxResults = maxResults
        self.total = total
        self.comments = comments
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.startAt = try values.decodeIfPresent(Int.self, forKey: "startAt")
        self.maxResults = try values.decodeIfPresent(Int.self, forKey: "maxResults")
        self.total = try values.decodeIfPresent(Int.self, forKey: "total")
        self.comments = try values.decodeIfPresent([Comment].self, forKey: "comments")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(startAt, forKey: "startAt")
        try values.encodeIfPresent(maxResults, forKey: "maxResults")
        try values.encodeIfPresent(total, forKey: "total")
        try values.encodeIfPresent(comments, forKey: "comments")
    }
}