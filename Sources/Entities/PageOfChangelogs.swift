// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A page of changelogs.
public struct PageOfChangelogs: Codable {
    /// The index of the first item returned on the page.
    public var startAt: Int32?
    /// The maximum number of results that could be on the page.
    public var maxResults: Int32?
    /// The number of results on the page.
    public var total: Int32?
    /// The list of changelogs.
    public var histories: [Changelog]?

    public init(startAt: Int32? = nil, maxResults: Int32? = nil, total: Int32? = nil, histories: [Changelog]? = nil) {
        self.startAt = startAt
        self.maxResults = maxResults
        self.total = total
        self.histories = histories
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.startAt = try values.decodeIfPresent(Int32.self, forKey: "startAt")
        self.maxResults = try values.decodeIfPresent(Int32.self, forKey: "maxResults")
        self.total = try values.decodeIfPresent(Int32.self, forKey: "total")
        self.histories = try values.decodeIfPresent([Changelog].self, forKey: "histories")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(startAt, forKey: "startAt")
        try values.encodeIfPresent(maxResults, forKey: "maxResults")
        try values.encodeIfPresent(total, forKey: "total")
        try values.encodeIfPresent(histories, forKey: "histories")
    }
}
